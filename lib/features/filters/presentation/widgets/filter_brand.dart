import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

import 'filters_item.dart';

class FilterBrands extends StatefulWidget {
  const FilterBrands({
    super.key,
  });

  @override
  State<FilterBrands> createState() => _FilterBrandsState();
}

class _FilterBrandsState extends State<FilterBrands> {
  bool individualCallection = false,
      cocola = false,
      ifad = true,
      kaziFarmas = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Brands',
              style: Styless.textStyle24,
            ),
          ),
          const SizedBox(height: 25),
          FiltersItem(
            title: 'Individual Callection',
            value: individualCallection,
            onChanged: (value) {
              individualCallection = value ?? individualCallection;
              setState(() {});
            },
          ),
          FiltersItem(
            title: 'Cocola',
            value: cocola,
            onChanged: (value) {
              cocola = value ?? cocola;
              setState(() {});
            },
          ),
          FiltersItem(
              title: 'Ifad',
              value: ifad,
              onChanged: (value) {
                ifad = value ?? ifad;
                setState(() {});
              }),
          FiltersItem(
              title: 'Kazi Farmas',
              value: kaziFarmas,
              onChanged: (value) {
                kaziFarmas = value ?? kaziFarmas;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
