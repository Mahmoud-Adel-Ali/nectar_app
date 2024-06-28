import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';
import 'package:nectar_app/features/home/presentation/widgets/home_view_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/in_active_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: Image.asset(AppImages.carrot, height: 30,width: 28,),
            expandedHeight: 56,
            pinned: false,
            toolbarHeight: 0,
          ),
          const CustomSliverAppBar(
            title: SafeArea(child: InActiveSearchField()),
            expandedHeight: 56,
            pinned: true,
            toolbarHeight: 65,
          ),
          const SliverToBoxAdapter(
            child: HomeViewBody(),
          ),
        ],
      ),
    );
  }
}
