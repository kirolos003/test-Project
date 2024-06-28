import 'package:dio/dio.dart';
class DioHelper
{
  static Dio? dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://d665-156-195-60-8.ngrok-free.app/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?>? getData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    return await dio!.get(
      url,
      queryParameters: query,
      options: Options(headers: headers),
    );
  }

  static Future<Response?>? postData({
    required String url,
    required Map<String , dynamic>? data,
    Map<String, dynamic>? headers,
  })async {
    return dio?.post(
      url ,
      data: data,
      options: Options(headers: headers),
    );
  }
}