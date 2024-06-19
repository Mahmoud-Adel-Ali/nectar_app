import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';

class FreshVigeBox extends StatelessWidget {
  const FreshVigeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AppImages.freshBox,
              ),
            ),
          ),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //   Image.asset(AppImages.freshViga1,width: 111,),
          //   ],
          // ),
        ),
      ),
    );
  }
}
