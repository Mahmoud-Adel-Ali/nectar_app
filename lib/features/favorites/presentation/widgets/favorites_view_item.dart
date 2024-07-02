import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_arrow_right_button.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';

class FavoruritesViewItem extends StatelessWidget {
  const FavoruritesViewItem({super.key, required this.item});
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  item.imgPath.toString(),
                  errorBuilder: ((context, error, stackTrace) =>
                      const Icon(Icons.account_circle)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 10,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item.name, style: Styless.textStyle16Bold),
                  subtitle: Text(item.description, style: Styless.textStyle14),
                ),
              ),
              Text('\$${item.price}', style: Styless.textStyle16),
              CustomArrowRightButton(onPressed: (){}),
            ],
          ),
          const Divider(color: Color(0xffE2E2E2), thickness: 1)
        ],
      ),
    );
  }
}
