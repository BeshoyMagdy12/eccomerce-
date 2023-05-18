import 'package:dio/dio.dart';

class AppService {
  final String baseUrl = 'https://student.valuxapps.com/api/';
  final Dio _dio = Dio();

  Future<dynamic> get(String endpoint) async {
    try {
      final response = await _dio.get('$baseUrl/$endpoint');
      return response.data;
    } catch (e) {
      throw Exception('Failed to load data from API');
    }
  }

  Future<dynamic> post(String endpoint, Map<String,dynamic> body) async {
    try {
      final response = await _dio.post('$baseUrl/$endpoint', data: body);
      return response.data;
    } catch (e) {
      throw Exception('Failed to create new resource');
    }
  }

  Future<dynamic> put(String endpoint, dynamic body) async {
    try {
      final response = await _dio.put('$baseUrl/$endpoint', data: body);
      return response.data;
    } catch (e) {
      throw Exception('Failed to update resource');
    }
  }

  Future<dynamic> delete(String endpoint) async {
    try {
      final response = await _dio.delete('$baseUrl/$endpoint');
      return response.data;
    } catch (e) {
      throw Exception('Failed to delete resource');
    }
  }
}
