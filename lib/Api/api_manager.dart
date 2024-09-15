import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:elevate_task/models/product_model.dart';

class ApiManager {
  final Dio dio;
  ApiManager(this.dio);

  static String baseUrl = "https://fakestoreapi.com";
  Future<List<ProductModel>> getProducts() async {
    try {
  Response response = await dio.get('$baseUrl/products');
  List<ProductModel> productList = (response.data as List).map((product) => ProductModel.fromjson(product)).toList();
  return productList;
} catch (e) {
  log(e.toString());
  throw Exception(e);
}
  }
  
}
