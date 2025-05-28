import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_gallery_task3/repositories/image_repository.dart';

import 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  final ImageRepository repository;
  int _page = 1;
  bool isLoadingMore = false;

  ImageCubit(this.repository) : super(ImageInitial());

  Future<void> loadImages({int page = 1}) async {
    if (isLoadingMore && page != 1) return;
    try {
      if (page == 1) emit(ImageLoading());
      isLoadingMore = true;
      final newImages = await repository.fetchImages(page: page);
      if (state is ImageLoaded && page != 1) {
        final oldImages = (state as ImageLoaded).images;
        emit(ImageLoaded([...oldImages, ...newImages]));
      } else {
        emit(ImageLoaded(newImages));
      }
      _page++;
    } catch (_) {
      emit(ImageError('Failed to load images.'));
    } finally {
      isLoadingMore = false;
    }
  }

  void loadNextPage() => loadImages(page: _page);
}