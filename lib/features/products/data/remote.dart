import 'package:dio/dio.dart';
import 'package:jun_12_test_api/core/remote/dio_helper.dart';
import 'package:jun_12_test_api/core/shared/urls.dart';

class ProductsRemote
{
  static Future<List<dynamic>> getProducts() async
  {
    final Response response = await DioHelper.dio.get(products);
    final List<dynamic> list = response.data;
    return list;
  }
}