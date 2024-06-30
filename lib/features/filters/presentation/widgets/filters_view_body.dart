import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/filters/presentation/widgets/filter_categories.dart';
import 'package:nectar_app/features/filters/presentation/widgets/filter_brand.dart';

class FiltersViewBody extends StatelessWidget {
  const FiltersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: FilterCategories()),
          const SliverToBoxAdapter(child: FilterBrands()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 50)),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CustomButtom(
                    onPressed: () {},
                    child:  Text(
                      'Apply Filter',
                      style: Styless.textStyle20.copyWith(color: AppColors.scaffoldBackground),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
