import 'package:dio/dio.dart';
import 'package:jun_12_test_api/core/shared/urls.dart';

class DioHelper
{
  static Dio dio = Dio();

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }
}