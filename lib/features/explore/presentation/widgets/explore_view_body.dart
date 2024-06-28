import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/widgets/categories_grid_view.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';
import 'package:nectar_app/features/home/presentation/widgets/in_active_search_field.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        // CustomSliverAppBar(
        //   title: Text(
        //     'Find Products',
        //     style: Styless.textStyle20,
        //   ),
        //   expandedHeight: 56,
        //   pinned: true,
        //   toolbarHeight: 60,
        // ),
        SliverToBoxAdapter(child: InActiveSearchField()),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CategoriesGridView(),
          ),
        )
      ],
    );
  }
}
