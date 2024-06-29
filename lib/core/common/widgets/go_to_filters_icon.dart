import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/filters/presentation/views/filters_view.dart';

class GoToFiltersIcon extends StatelessWidget {
  const GoToFiltersIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FiltersView()));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: SvgPicture.asset(AppImages.categoryAction),
      ),
    );
  }
}
