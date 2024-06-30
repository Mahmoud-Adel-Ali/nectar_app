import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/filters/presentation/widgets/filters_view_body.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: AppColors.scaffoldBackground,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Filters',
          style: Styless.textStyle20.copyWith(
            fontFamily: FontFamilyHelper.gilroyBold,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, color: Color(0xff181725))),
      ),
      body: const FiltersViewBody(),
    );
  }
}
