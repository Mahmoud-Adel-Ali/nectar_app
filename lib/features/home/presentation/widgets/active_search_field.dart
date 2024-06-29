// ignore_for_file: must_be_immutable, unused_element

import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class ActiveSearchField extends StatelessWidget {
  ActiveSearchField(
      {super.key, this.onChanged, this.suffixIcon, this.controller});
  void Function(String)? onChanged;
  Widget? suffixIcon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        style: Styless.textStyle18,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search Store",
          hintStyle: Styless.textStyle16,
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
