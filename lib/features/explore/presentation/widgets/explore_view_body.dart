import 'package:flutter/material.dart';
import 'package:nectar_app/features/explore/presentation/widgets/categories_grid_view.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: CategoriesGridView(),
    );
  }
}
