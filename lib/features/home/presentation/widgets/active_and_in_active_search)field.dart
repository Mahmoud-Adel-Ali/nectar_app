// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';

class ActiveSearchField extends StatelessWidget {
  ActiveSearchField(
      {super.key, this.onChanged, this.suffixIcon, this.controller});
  void Function(String)? onChanged;
  Widget? suffixIcon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: height * 0.2,
        maxHeight: height * 0.2,
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            Container(
              height: 51.57,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F2),
                borderRadius: BorderRadius.circular(24),
              ),
              alignment: Alignment.center,
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
            ),
          ],
        ),
      ),
    );
  }
}

class InActiveSearchField extends StatelessWidget {
  const InActiveSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: height * 0.1,
        maxHeight: height * 0.1,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          margin: const EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            color: AppColors.scaffoldBackground,
            borderRadius: BorderRadius.circular(24),
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 52,
          margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xffF2F3F2),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                ),
                Text(
                  'Search Store',
                  style: Styless.textStyle14,
                ),
              ],
            ),
          ),
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
