import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_expantion_panal.dart';

class Review extends StatelessWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionPanel(
      title: 'Review',
      subtitle: 'Review.....................',
      trailing: Row(
        children: [
          SvgPicture.asset(AppImages.stare),
          SvgPicture.asset(AppImages.stare),
          SvgPicture.asset(AppImages.stare),
          SvgPicture.asset(AppImages.stare),
          SvgPicture.asset(AppImages.stare),
        ],
      ),
    );
  }
}
