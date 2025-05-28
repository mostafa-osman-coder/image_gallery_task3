import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_gallery_task3/repositories/image_repository.dart';

import 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  final ImageRepository repository;

  ImageCubit(this.repository) : super(ImageInitial());

  Future<void> loadImages({int page = 1}) async {
    try {
      emit(ImageLoading());
      final images = await repository.fetchImages(page: page);
      emit(ImageLoaded(images));
    } catch (e) {
      emit(ImageError('Failed to load images.'));
    }
  }
}