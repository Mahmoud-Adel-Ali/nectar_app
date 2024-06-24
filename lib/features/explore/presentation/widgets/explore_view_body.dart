import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/widgets/categories_grid_view.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_search_field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';

class ExploreViewBody extends StatefulWidget {
  const ExploreViewBody({super.key});

  @override
  State<ExploreViewBody> createState() => _ExploreViewBodyState();
}

class _ExploreViewBodyState extends State<ExploreViewBody> {
  bool searchIsActive = false;
  String searchText = '';
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(
          title: Text(
            'Find Products',
            style: Styless.textStyle20,
          ),
          expandedHeight: 56,
        ),
        CustomSearchField(
          controller: searchController,
          onChanged: (text) {
            if (text.isEmpty) {
              searchIsActive = false;
              setState(() {});
            } else {
              searchIsActive = true;
              searchText = text;
              setState(() {});
            }
          },
          suffixIcon: IconButton(
            onPressed: () {
              searchText = '';
              searchIsActive = false;
              searchController.clear();
              setState(() {});
            },
            icon: const Icon(
              Icons.cancel,
              color: Colors.grey,
            ),
          ),
        ),
        searchIsActive
            ? const SliverToBoxAdapter()
            : const SliverFillRemaining(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: CategoriesGridView(),
                ),
              )
      ],
    );
  }
}
