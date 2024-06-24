import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/custom_product_grid_view.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/test_products_list.dart';

class BestSellerBody extends StatefulWidget {
  const BestSellerBody({super.key});

  @override
  State<BestSellerBody> createState() => _BestSellerBodyState();
}

class _BestSellerBodyState extends State<BestSellerBody> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Selling',
                  style: Styless.textStyle24,
                ),
                TextButton(
                  onPressed: () {
                    seeAll = !seeAll;
                    setState(() {});
                  },
                  child: Text(
                    seeAll ? 'close' : "see all",
                    style: Styless.textStyle16
                        .copyWith(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
          ),
          CustomProductGridView(seeAll: seeAll, productsList: textProductsList),
        ],
      ),
    );
  }
}
