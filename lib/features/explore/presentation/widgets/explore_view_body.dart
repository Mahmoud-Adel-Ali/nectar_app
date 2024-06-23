import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_search_field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(
            title: Text(
          'Find Products',
          style: Styless.textStyle20,
        )),
        CustomSearchField(),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
