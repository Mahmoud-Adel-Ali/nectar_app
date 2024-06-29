import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider(
      {super.key, required this.items, required this.height});
  final List<Widget> items;
  final double height;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: items,
        options: CarouselOptions(
          viewportFraction: 1,
          height: height,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          // aspectRatio: 16 / 9,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          // autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.5,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ));
  }
}
