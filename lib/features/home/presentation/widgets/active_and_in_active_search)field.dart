// ignore_for_file: must_be_immutable, unused_element

import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/views/search_view.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackground,
              borderRadius: BorderRadius.circular(24),
            ),
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 3),
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F2),
                borderRadius: BorderRadius.circular(24),
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
    // final double height = MediaQuery.sizeOf(context).height;
    return SliverAppBar(
      backgroundColor: AppColors.scaffoldBackground,
      floating: false,
      pinned: true,
      toolbarHeight: 75,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: Container(color: AppColors.scaffoldBackground),
        title: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SearchView()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackground,
              borderRadius: BorderRadius.circular(24),
            ),
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 3),
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
