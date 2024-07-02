import 'package:flutter/material.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_header.dart';

checkoutBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    // isScrollControlled: true,
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
          ],
        ),
      );
    },
  );
}
