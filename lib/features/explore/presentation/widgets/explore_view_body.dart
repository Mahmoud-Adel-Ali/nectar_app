import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_product_grid_view.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/widgets/categories_grid_view.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_search_field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';
import 'package:nectar_app/test_products_list.dart';

class ExploreViewBody extends StatefulWidget {
  const ExploreViewBody({super.key});

  @override
  State<ExploreViewBody> createState() => _ExploreViewBodyState();
}

class _ExploreViewBodyState extends State<ExploreViewBody> {
  bool searchIsActive = false;
  String searchText = '';
  List<ProductModel> productsResult = [];
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
              productsResult = [];
              for (var item in textProductsList) {
                if (item.name.toLowerCase().contains(text.toLowerCase())) {
                  productsResult.add(item);
                }
              }
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
            ? SliverToBoxAdapter(
                child: CustomProductGridView(
                    seeAll: true, productsList: productsResult),
              )
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
