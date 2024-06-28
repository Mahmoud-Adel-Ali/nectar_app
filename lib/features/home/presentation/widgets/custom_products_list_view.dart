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
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        // physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: textProductsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 16 : 0,
              right: index == textProductsList.length - 1 ? 16 : 0,
            ),
            child: CustomProductCard(
              productModel: textProductsList[index],
            ),
          );
        },
      ),
    );
  }
}
