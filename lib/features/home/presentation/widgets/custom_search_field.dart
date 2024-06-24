// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({super.key, this.onChanged,this.suffixIcon});
  void Function(String)? onChanged;
  Widget? suffixIcon;
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
