import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/custom_product_grid_view.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/test_products_list.dart';

class ExclusiveOfferBody extends StatefulWidget {
  const ExclusiveOfferBody({super.key});

  @override
  State<ExclusiveOfferBody> createState() => _ExclusiveOfferBodyState();
}

class _ExclusiveOfferBodyState extends State<ExclusiveOfferBody> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Exclusive Offer',
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
