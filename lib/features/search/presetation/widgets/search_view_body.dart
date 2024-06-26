import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_product_grid_view.dart';
import 'package:nectar_app/core/common/widgets/go_to_filters_icon.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/active_search_field.dart';
import 'package:nectar_app/test_products_list.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController controller = TextEditingController();
  String searchText = '';
  List<ProductModel> answerdList = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(height: 35),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Expanded(
                  child: ActiveSearchField(
                    controller: controller,
                    onChanged: (text) {
                      answerdList.clear();
                      searchText = text;
                      for (ProductModel product in textProductsList) {
                        if (product.name
                            .toLowerCase()
                            .contains(text.toLowerCase())) {
                          answerdList.add(product);
                        }
                      }
                      setState(() {});
                    },
                    suffixIcon: searchText.isEmpty
                        ? null
                        : IconButton(
                            onPressed: () {
                              controller.clear();
                              answerdList.clear();
                              searchText = '';
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.cancel,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                ),
                const GoToFiltersIcon(),
              ],
            ),
          ),
        ),
        searchText.isNotEmpty && answerdList.isEmpty
            ? const Expanded(
                child: Center(
                    child: Text(
                'No results ; \n search about product.',
                style: Styless.textStyle24,
                textAlign: TextAlign.center,
              )))
            : CustomProductGridView(
                productsList:
                    answerdList.isEmpty ? textProductsList : answerdList,
              ),
      ],
    );
  }
}
