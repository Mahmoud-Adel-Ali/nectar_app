import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_bottom_sheet_item.dart';

import '../../../../core/utils/styless.dart';

class CheckoutItems extends StatelessWidget {
  const CheckoutItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckoutBottmSheetItem(
          onPressed: () {},
          trailing: Text(
            'Select Method',
            style: Styless.textStyle16Bold
                .copyWith(color: const Color(0xff7C7C7C)),
          ),
          title: 'Delivery',
        ),
        CheckoutBottmSheetItem(
          onPressed: () {},
          trailing: SvgPicture.asset(AppImages.payment),
          title: 'Pament',
        ),
        CheckoutBottmSheetItem(
          onPressed: () {},
          trailing: Text(
            'Pick discount',
            style: Styless.textStyle16Bold
                .copyWith(color: const Color(0xff7C7C7C)),
          ),
          title: 'Promo Code',
        ),
        CheckoutBottmSheetItem(
          onPressed: () {},
          trailing: Text(
            '\$13.97',
            style: Styless.textStyle16Bold
                .copyWith(color: const Color(0xff7C7C7C)),
          ),
          title: 'Total Cost',
        ),
      ],
    );
  }
}
