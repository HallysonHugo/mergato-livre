import 'package:dio/dio.dart';

class DioConnection {
  Dio dio = Dio(
    BaseOptions(baseUrl: 'https://api.thecatapi.com/v1/', headers: {
      'x-api-key':
          "live_f26McNqH84QzBy0GMXRHhElOcoX40cHAsfYFRFO1gT7NeO5BOd2v7fxB5GzkcNEx",
    }),
  );
}
