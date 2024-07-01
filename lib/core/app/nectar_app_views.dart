import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/features/cart/presentation/views/cart_view.dart';
import 'package:nectar_app/features/explore/presentation/views/explore_view.dart';
import 'package:nectar_app/features/home/presentation/views/home_view.dart';

class NectarAppViews extends StatefulWidget {
  const NectarAppViews({super.key});

  @override
  State<NectarAppViews> createState() => _NectarAppViewsState();
}

class _NectarAppViewsState extends State<NectarAppViews> {
  final PageController _pageController = PageController();
  int pageIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        activeColor: AppColors.mainColor,
        currentIndex: pageIndex,
        inactiveColor: const Color(0xff181725),
        backgroundColor: const Color(0xffFFFFFF),
        height: 70,
        iconSize: 35,
        onTap: (index) {
          _pageController.jumpToPage(index);
          pageIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_sharp),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: "Account",
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          HomeView(),
          ExploreView(),
          CartView(),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
