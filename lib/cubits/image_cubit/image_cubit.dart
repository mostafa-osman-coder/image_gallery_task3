import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageInitial());
}
