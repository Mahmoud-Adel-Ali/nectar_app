// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/custom_cached_network_image.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/views/details_view.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsView(
            productModel: productModel,
          ),
        ));
      },
      child: Container(
        height: 250,
        width: 190,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: const Color(0xffE2E2E2), width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCachedNetworkImage(imgUrl: productModel.imgPath , height: 80,),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                productModel.name,
                style: Styless.textStyle16Bold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Opacity(
                  opacity: 0.5,
                  child: Text(
                    productModel.description,
                    style: Styless.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${productModel.price}",
                  style: Styless.textStyle18,
                ),
                SizedBox(
                  width: 55,
                  height: 55,
                  child: CustomButtom(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
