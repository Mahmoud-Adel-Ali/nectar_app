import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/widgets/explore_view_body.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';
import 'package:nectar_app/features/home/presentation/widgets/in_active_search_field.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: Text(
              'Find Products',
              style: Styless.textStyle20,
            ),
            expandedHeight: 56,
            pinned: true,
            toolbarHeight: 65,
          ),
          CustomSliverAppBar(
            title: InActiveSearchField(),
            expandedHeight: 56,
            pinned: false,
            toolbarHeight: 65,
          ),
          SliverToBoxAdapter(child: ExploreViewBody()),
        ],
      ),
    );
  }
}
