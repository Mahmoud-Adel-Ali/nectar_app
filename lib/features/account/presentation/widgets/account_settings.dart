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
        AccountListTileItem(
            title: 'My Details', iconImage: AppImages.myDetailsIcon, onPressed: () {}),
        AccountListTileItem(
            title: 'Delivery Address', iconImage: AppImages.deliceryAddress, onPressed: () {}),
        AccountListTileItem(
            title: 'Payment Methods', iconImage: AppImages.paymentMethods, onPressed: () {}),
        AccountListTileItem(
            title: 'Promo Cord', iconImage: AppImages.ptomoCord, onPressed: () {}),
        AccountListTileItem(
            title: 'Notifecations', iconImage: AppImages.bell, onPressed: () {}),
        AccountListTileItem(
            title: 'Help', iconImage: AppImages.help, onPressed: () {}),
        AccountListTileItem(
            title: 'About', iconImage: AppImages.about, onPressed: () {}),
      ],
    );
  }
}
