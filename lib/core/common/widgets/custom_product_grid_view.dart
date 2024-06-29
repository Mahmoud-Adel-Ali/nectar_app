import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class CustomProductGridView extends StatelessWidget {
  const CustomProductGridView(
      {super.key, required this.productsList});
  final List<ProductModel> productsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => CustomProductCard(
            productModel: productsList[index],
          ),
        ),
      ),
    );
  }
}
