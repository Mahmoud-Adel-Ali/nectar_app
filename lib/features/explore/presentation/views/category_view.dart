import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_product_grid_view.dart';
import 'package:nectar_app/core/common/widgets/go_to_filters_icon.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/test_products_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: const Text('Category', style: Styless.textStyle22bold),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(color: AppColors.scaffoldBackground),
        ),
        actions: const [Padding(
          padding: EdgeInsets.all(8.0),
          child: GoToFiltersIcon(),
        )],
      ),
      body: Column(
        children: [
          CustomProductGridView(productsList: textProductsList),
        ],
      ),
    );
  }
}
