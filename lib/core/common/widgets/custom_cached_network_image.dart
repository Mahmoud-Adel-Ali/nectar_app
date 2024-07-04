import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({super.key, required this.imgUrl, this.height, this.width});
  final String imgUrl;
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        height: height,
        width: width,
        fit: BoxFit.cover,
        errorWidget: ((context, error, stackTrace) =>
            const Icon(Icons.account_circle)),
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
