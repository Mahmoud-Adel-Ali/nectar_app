import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

import 'filters_item.dart';

class FilterCategories extends StatefulWidget {
  const FilterCategories({
    super.key,
  });

  @override
  State<FilterCategories> createState() => _FilterCategoriesState();
}

class _FilterCategoriesState extends State<FilterCategories> {
  bool eggs = true, noodls = false, fastFood = false, chipa = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Categories',
              style: Styless.textStyle24,
            ),
          ),
          const SizedBox(height: 25),
          FiltersItem(
            title: 'Eggs',
            value: eggs,
            onChanged: (value) {
              eggs = value ?? eggs;
              setState(() {});
            },
          ),
          FiltersItem(
            title: 'Noodles & Pasta',
            value: noodls,
            onChanged: (value) {
              noodls = value ?? noodls;
              setState(() {});
            },
          ),
          FiltersItem(
              title: 'Chips & Crisps',
              value: chipa,
              onChanged: (value) {
                chipa = value ?? chipa;
                setState(() {});
              }),
          FiltersItem(
              title: 'Fast Food',
              value: fastFood,
              onChanged: (value) {
                fastFood = value ?? fastFood;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
