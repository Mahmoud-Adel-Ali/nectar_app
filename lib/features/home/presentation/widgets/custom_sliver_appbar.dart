// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key, required this.title,
  });
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 98.26,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
      ),
    );
  }
}
