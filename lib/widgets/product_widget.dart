import 'package:elevate_task/cubit/get%20product%20cubit/get_cubit_product.dart';
import 'package:elevate_task/cubit/get%20product%20cubit/product_states.dart';
import 'package:elevate_task/custom%20widgets/custom_product_card.dart';
import 'package:elevate_task/models/product_model.dart';
import 'package:elevate_task/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetPrductCubit>(context).getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetPrductCubit, ProductStates>(
        builder: (context, state) {
          if (state is InitialLoadingProductState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SuccessProductState) {
            var productList =
                BlocProvider.of<GetPrductCubit>(context).productList;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisExtent: 240,
                childAspectRatio: 1 / 2,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                ProductModel product = productList[index];
                return ProductCard(product: product);
              },
              itemCount: productList.length,
            );
          } else {
            return const ErrorScreen();
          }
        },
      ),
    );
  }
}
