import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/cart/presentation/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: const Text('My Cart', style: Styless.textStyle20bold),
        centerTitle: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(color: AppColors.scaffoldBackground),
        ),
      ),
      body:const CartViewBody(),
    );
  }
}
