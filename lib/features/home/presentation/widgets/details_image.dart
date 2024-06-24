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
      height: MediaQuery.sizeOf(context).height * 0.405,
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.305,
            child:
                FittedBox(fit: BoxFit.scaleDown, child: Image.network(imgPath)),
          ),
        ],
      ),
    );
  }
}
