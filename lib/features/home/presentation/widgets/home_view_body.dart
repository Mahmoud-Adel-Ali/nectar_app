import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/common/widgets/custom_image_slideshow.dart';
import 'package:nectar_app/features/home/presentation/widgets/best_seller_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/active_and_in_active_search)field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';
import 'package:nectar_app/features/home/presentation/widgets/exclusive_offer_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/fresh_vige_box.dart';
import 'package:nectar_app/features/home/presentation/widgets/groceries_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          title: Image.asset(AppImages.carrot, height: 30),
          expandedHeight: 70,
          pinned: false,
        ),
        const InActiveSearchField(),
        // const FreshVigeBox(),
        const SliverToBoxAdapter(
          child: CustomImageSlideshow(
            height: 115,
            children: [
              FreshVigeBox(),
              FreshVigeBox(),
              FreshVigeBox(),
            ],
          ),
        ),
        const ExclusiveOfferBody(),
        const BestSellerBody(),
        const GroceriesBody(),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
