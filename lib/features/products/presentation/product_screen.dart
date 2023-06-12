import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jun_12_test_api/features/products/bloc/products_cubit.dart';
import 'package:jun_12_test_api/features/products/bloc/products_state.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ProductsCubit.get(context);
        return Scaffold(
          body: SizedBox(
            height: 500,
            child: ListView.builder(
                itemBuilder: (context, index) => ListTile(
                      leading: Text('${cubit.products[index].price}'),
                      title: Text(cubit.products[index].title!),
                      subtitle: Text('${cubit.products[index].price}'),
                    ),
                itemCount: cubit.products.length),
          ),
        );
      },
    );
  }
}
