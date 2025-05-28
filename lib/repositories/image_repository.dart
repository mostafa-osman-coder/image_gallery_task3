import 'package:dio/dio.dart';
import '../models/image_model.dart';

class ImageRepository {
  final Dio _dio = Dio();

  Future<List<ImageModel>> fetchImages({int page = 1, int limit = 30}) async {
    final response = await _dio.get(
      'https://picsum.photos/v2/list',
      queryParameters: {'page': page, 'limit': limit},
    );

    if (response.statusCode == 200) {
      final List data = response.data;
      return data.map((json) => ImageModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch images');
    }
  }
}