import 'package:dio/dio.dart';
import 'package:elevate_task/Api/api_manager.dart';
import 'package:elevate_task/cubit/get%20product%20cubit/product_states.dart';
import 'package:elevate_task/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetPrductCubit extends Cubit<ProductStates> {
  GetPrductCubit() : super(InitialLoadingProductState());
  late List<ProductModel> productList;
  ApiManager apiManager = ApiManager(Dio());
  void getProductData() async {
    emit(InitialLoadingProductState());
    try {
      productList = await apiManager.getProducts();
      emit(SuccessProductState());
    } catch (e) {
      emit(ErrorProductState());
    }
  }
}
