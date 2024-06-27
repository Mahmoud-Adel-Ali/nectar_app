import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';
import 'package:nectar_app/test_products_list.dart';

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.sizeOf(context).width - 32,
      child: ListView.builder(
        // to hidding white shadow form two side
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: textProductsList.length,
        itemBuilder: (context, index) {
          return CustomProductCard(
            productModel: textProductsList[index],
          );
        },
      ),
    );
  }
}
