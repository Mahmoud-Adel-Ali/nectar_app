import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/common/widgets/custom_image_slideshow.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';

class ProductDetailsImages extends StatelessWidget {
  const ProductDetailsImages({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

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
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child: SvgPicture.asset(AppImages.arrowBack)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
              ],
            ),
          ),
          CustomImageSlideshow(
            height: 220,
            children: [
              OneImageOfProduct(imgPath: productModel.imgPath),
              OneImageOfProduct(imgPath: productModel.imgPath),
              OneImageOfProduct(imgPath: productModel.imgPath),
              OneImageOfProduct(imgPath: productModel.imgPath),
            ],
          ),
        ],
      ),
    );
  }
}

class OneImageOfProduct extends StatelessWidget {
  const OneImageOfProduct({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: FittedBox(fit: BoxFit.scaleDown, child: Image.network(imgPath)),
    );
  }
}
