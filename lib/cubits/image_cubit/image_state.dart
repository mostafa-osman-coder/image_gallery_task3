part of 'image_cubit.dart';

sealed class ImageState extends Equatable {
  const ImageState();

  @override
  List<Object> get props => [];
}

final class ImageInitial extends ImageState {}
