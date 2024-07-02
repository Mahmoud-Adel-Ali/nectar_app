import 'package:flutter/material.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';

import '../../../../core/utils/styless.dart';

class CheckoutDescription extends StatelessWidget {
  const CheckoutDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'By placing an order you agree to our ',
            style: Styless.textStyle14,
          ),
          Text(
            'Terms & Conditions',
            style: Styless.textStyle14
                .copyWith(fontFamily: FontFamilyHelper.gilroyBold),
          ),
        ],
      ),
    );
  }
}
