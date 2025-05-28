import 'package:dio/dio.dart';
import '../models/image_model.dart';

class ImageRepository {
  final Dio _dio = Dio();
  final String _accessKey = 'YOUR_UNSPLASH_ACCESS_KEY';

  Future<List<ImageModel>> fetchImages({String query = 'random', int page = 1}) async {
    final response = await _dio.get(
      'https://api.unsplash.com/search/photos',
      queryParameters: {
        'query': query,
        'page': page,
        'per_page': 30,
        'client_id': _accessKey,
      },
    );

    if (response.statusCode == 200) {
      final List results = response.data['results'];
      return results.map((json) => ImageModel.fromUnsplash(json)).toList();
    } else {
      throw Exception('Failed to fetch images');
    }
  }
}