import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:nectar_app/core/app/app_colors.dart';

class CustomImageSlideshow extends StatelessWidget {
  const CustomImageSlideshow({
    super.key,
    required this.children,
    required this.height,
  });
  final List<Widget> children;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      initialPage: 0,
      height: height,
      indicatorPadding: 8,
      indicatorBackgroundColor: AppColors.greyText,
      indicatorColor: AppColors.mainColor,
      indicatorRadius: 5,
      children: children,
    );
  }
}
