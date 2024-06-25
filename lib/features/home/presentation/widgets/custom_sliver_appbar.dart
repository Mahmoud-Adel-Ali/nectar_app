// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title, required this.expandedHeight,
  });
  final Widget title;
  final double expandedHeight;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.scaffoldBackground,
      expandedHeight: expandedHeight,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
      ),
    );
  }
}
