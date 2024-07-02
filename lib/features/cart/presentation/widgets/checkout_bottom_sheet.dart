import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_description.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_header.dart';

import 'checkout_itmes.dart';

checkoutBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: const Color(0xffF2F3F2),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) {
      final height = MediaQuery.of(context).size.height;
      return SizedBox(
        height: height * 0.65,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const CheckoutHeader(),
              const Divider(color: Color(0xffE2E2E2), thickness: 1),
              const CheckoutItems(),
              const CheckoutDescription(),
              const Expanded(child: SizedBox(height: 30,)),
              CustomButtom(
                onPressed: () {},
                child: const Text(
                  'Place Order',
                  style: Styless.textStyle18,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
