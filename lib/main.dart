import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jun_12_test_api/core/remote/bloc_observer.dart';
import 'package:jun_12_test_api/core/remote/dio_helper.dart';
import 'package:jun_12_test_api/features/products/presentation/product_screen.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

