import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/favorites/presentation/widgets/favorites_view_item.dart';

import '../../../../test_products_list.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          Expanded(
            child: ListView.builder(
              itemCount: textProductsList.length,
              itemBuilder: (context, index) {
                return FavoruritesViewItem(item: textProductsList[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: CustomButtom(
                onPressed: () {},
                child:
                    const Text('Add All To Cart', style: Styless.textStyle16)),
          )
        ],
      ),
    );
  }
}
