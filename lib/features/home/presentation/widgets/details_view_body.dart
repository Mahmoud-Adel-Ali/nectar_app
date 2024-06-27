import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/custom_divider.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/add_product_and_price.dart';
import 'package:nectar_app/features/home/presentation/widgets/nutritions.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_details.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_details_images.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_name.dart';
import 'package:nectar_app/features/home/presentation/widgets/review.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 56,
          floating: false,
          elevation: 0,
          backgroundColor: const Color(0xffF2F3F2),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          flexibleSpace: FlexibleSpaceBar(
            // Maintain the same color
            background: Container(
              color: const Color(0xffF2F3F2),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: ProductDetailsImages(productModel: productModel)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                ProductName(
                  title: productModel.name,
                  subtitle: productModel.description,
                ),
                const SizedBox(height: 20),
                AddProductAndPrice(price: productModel.price),
                const SizedBox(height: 20),
                const CustomDivider(),
                const ProductDetails(),
                const CustomDivider(),
                const Nutritions(),
                const CustomDivider(),
                const Review(),
                const SizedBox(height: 20),
                CustomButtom(
                  onPressed: () {},
                  child: const Text(
                    'Add To Basket',
                    style: Styless.textStyle18,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
