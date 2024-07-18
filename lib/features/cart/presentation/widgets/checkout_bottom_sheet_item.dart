import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_arrow_right_button.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CheckoutBottmSheetItem extends StatelessWidget {
  const CheckoutBottmSheetItem({
    super.key,
    required this.trailing,
    required this.title,
    this.onPressed,
  });
  final Widget trailing;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IntrinsicWidth(
              child: ListTile(
                title: Text(
                  title,
                  style: Styless.textStyle18
                      .copyWith(color: const Color(0xff7C7C7C)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                trailing,
                CustomArrowRightButton(onPressed: onPressed),
              ],
            ),
          ],
        ),
        const Divider(color: Color(0xffE2E2E2), thickness: 1),
      ],
    );
  }
}
