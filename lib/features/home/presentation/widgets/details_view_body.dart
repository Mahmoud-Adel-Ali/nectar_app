import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/add_product_and_price.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_expantion_panal.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_details_images.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_name.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductDetailsImages(productModel: productModel),
          Padding(
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
                const SizedBox(
                    child: Divider(thickness: 1, color: Color(0xffE2E2E2))),
                const CustomExpansionPanel(
                  title: 'Product Detail',
                  subtitle:
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                ),
                const SizedBox(
                    child: Divider(thickness: 1, color: Color(0xffE2E2E2))),
                const CustomExpansionPanel(
                  title: 'Nutritions',
                  subtitle: 'Nutritions......................',
                ),
                const SizedBox(
                    child: Divider(thickness: 1, color: Color(0xffE2E2E2))),
                const CustomExpansionPanel(
                  title: 'Review',
                  subtitle: 'Review.....................',
                ),
                const SizedBox(height: 20),
                // const CustomExpansionPanel(),
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
        ],
      ),
    );
  }
}
