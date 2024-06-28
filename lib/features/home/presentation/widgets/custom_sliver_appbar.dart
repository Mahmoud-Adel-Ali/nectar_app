// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    required this.expandedHeight,
    required this.pinned, required this.toolbarHeight,
  });
  final Widget title;
  final double expandedHeight;
  final bool pinned;
  final double toolbarHeight;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.scaffoldBackground,
      expandedHeight: expandedHeight,
      floating: false,
      pinned: pinned,
      toolbarHeight:toolbarHeight ,
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        background: Container(color: AppColors.scaffoldBackground),
        expandedTitleScale:1.3,
      ),
    );
  }
}
