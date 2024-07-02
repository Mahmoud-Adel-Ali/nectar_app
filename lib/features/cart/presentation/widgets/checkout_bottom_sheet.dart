import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_bottom_sheet_item.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_header.dart';

import 'checkout_itmes.dart';

checkoutBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    // isScrollControlled: true,
    backgroundColor: const Color(0xffF2F3F2),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) {
      // final height = MediaQuery.of(context).size.height;
      return const Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            CheckoutHeader(),
            Divider(color: Color(0xffE2E2E2), thickness: 1),
            CheckoutItems(),
          ],
        ),
      );
    },
  );
}
