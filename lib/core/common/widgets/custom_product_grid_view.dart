import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class CustomProductGridView extends StatelessWidget {
  const CustomProductGridView(
      {super.key, required this.seeAll, required this.productsList});
  final bool seeAll;
  final List<ProductModel> productsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: seeAll ? productsList.length : 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:  1.35 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => CustomProductCard(
          productModel: productsList[index],
        ),
      ),
    );
  }
}
