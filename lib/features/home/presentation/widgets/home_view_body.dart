import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/home/presentation/widgets/best_seller_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_search_field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';
import 'package:nectar_app/features/home/presentation/widgets/exclusive_offer_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/fresh_vige_box.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: Image.asset(AppImages.carrot, height: 30)),
        const CustomSearchField(),
        const FreshVigeBox(),
        const ExclusiveOfferBody(),
        const BestSellerBody(),
      ],
    );
  }
}
