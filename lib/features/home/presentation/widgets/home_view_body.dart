import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_image_slideshow.dart';
import 'package:nectar_app/features/home/presentation/widgets/best_seller_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/exclusive_offer_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/fresh_vige_box.dart';
import 'package:nectar_app/features/home/presentation/widgets/groceries_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        CustomImageSlideshow(
          height: 120,
          children: [
            FreshVigeBox(),
            FreshVigeBox(),
            FreshVigeBox(),
          ],
        ),
        ExclusiveOfferBody(),
        BestSellerBody(),
        GroceriesBody(),
        SizedBox(height: 32),
      ],
    );
  }
}
