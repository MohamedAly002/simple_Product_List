import 'package:elevate_task/cubit/get%20product%20cubit/get_cubit_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var poductCubit = BlocProvider.of<GetPrductCubit>(context);

    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'oops! something went wrong.\nplease check your connection',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  poductCubit.getProductData();
                },
                child: const Text('Try Again')),
          ],
        ),
      ),
    );
  }
}