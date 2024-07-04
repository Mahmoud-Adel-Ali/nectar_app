import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_cached_network_image.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/add_product_and_price.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.item});
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: 140,
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CustomCachedNetworkImage(imgUrl: item.imgPath),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(item.name, style: Styless.textStyle16Bold),
                      subtitle:
                          Text(item.description, style: Styless.textStyle14),
                      trailing: IconButton(
                        icon: const Icon(Icons.close, color: Color(0xffB3B3B3)),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: AddProductAndPrice(
                        price: 2.99,
                        numOfProduct: 1,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(color: Color(0xffE2E2E2), thickness: 1)
      ],
    );
  }
}
