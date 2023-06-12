import 'package:dio/src/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jun_12_test_api/features/products/bloc/products_state.dart';
import 'package:jun_12_test_api/features/products/data/model.dart';
import 'package:jun_12_test_api/features/products/data/remote.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  static ProductsCubit get(context)=> BlocProvider.of(context);

  List<ProductsModel> products = [];

  Future getAllProducts() async
  {
    List<dynamic> productsList = await ProductsRemote.getProducts();
    products = productsList.map((e) => ProductsModel.fromJson(e)).toList();
    print(products.length);
  }

}
