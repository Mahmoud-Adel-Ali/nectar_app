import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_products_list_view.dart';

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                },
                child: Text(
                  "see all",
                  style: Styless.textStyle16
                      .copyWith(color: AppColors.mainColor),
                ),
              ),
            ],
          ),
        ),
        const CustomProductListView(),
      ],
    );
  }
}
