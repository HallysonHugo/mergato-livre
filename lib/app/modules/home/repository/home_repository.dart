import 'package:dio/dio.dart';
import 'package:mergato_livre/app/service/dio_connection.dart';

class HomeRepository {
  final Dio _dio = DioConnection().dio;

  Future<Response> getCats() async {
    try {
      return await _dio.get('breeds', queryParameters: {'limit': 10});
    } catch (e) {
      rethrow;
    }
  }
}
