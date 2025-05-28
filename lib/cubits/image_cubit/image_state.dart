import 'package:equatable/equatable.dart';
import 'package:image_gallery_task3/models/image_model.dart';


abstract class ImageState extends Equatable {
  @override
  List<Object> get props => [];
}

class ImageInitial extends ImageState {}

class ImageLoading extends ImageState {}

class ImageLoaded extends ImageState {
  final List<ImageModel> images;

  ImageLoaded(this.images);

  @override
  List<Object> get props => [images];
}

class ImageError extends ImageState {
  final String message;

  ImageError(this.message);

  @override
  List<Object> get props => [message];
}