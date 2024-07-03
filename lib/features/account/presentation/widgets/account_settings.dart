import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/account/presentation/widgets/account_list_tile_item.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AccountListTileItem(
            title: 'Order', iconImage: AppImages.orderIcon, onPressed: () {}),
      ],
    );
  }
}
