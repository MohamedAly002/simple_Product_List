import 'package:elevate_task/cubit/get%20product%20cubit/get_cubit_product.dart';
import 'package:elevate_task/screens/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetPrductCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Elevate Task',
        home: ProductScreen(),
      ),
    );
  }
}
