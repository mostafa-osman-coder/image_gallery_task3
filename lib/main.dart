import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_gallery_task3/cubits/image_cubit/image_cubit.dart';
import 'repositories/image_repository.dart';
import 'screens/gallery_screen.dart';

void main() {
  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RepositoryProvider(
        create: (_) => ImageRepository(),
        child: BlocProvider(
          create: (context) =>
              ImageCubit(context.read<ImageRepository>()),
          child: const GalleryScreen(),
        ),
      ),
    );
  }
}