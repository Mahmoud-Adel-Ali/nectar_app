import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    super.key,
    required this.imgPath,
  });
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F3F2),
      height: MediaQuery.sizeOf(context).height * 0.405,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppImages.arrowBack)),
                GestureDetector(child: SvgPicture.asset(AppImages.logout)),
              ],
            ),
          ),
          Image.network(imgPath),
        ],
      ),
    );
  }
}
