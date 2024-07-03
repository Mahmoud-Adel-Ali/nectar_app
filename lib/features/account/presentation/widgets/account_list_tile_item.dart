import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class AccountListTileItem extends StatelessWidget {
  const AccountListTileItem({
    super.key,
    required this.title,
    required this.iconImage,
    this.onPressed,
  });
  final String title;
  final String iconImage;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListTile(
            title: Text(title, style: Styless.textStyle18),
            leading: Image.asset(iconImage),
            trailing: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 39,
                )),
          ),
        ),
        const Divider(thickness: 1, color: Color(0xffE2E2E2)),
      ],
    );
  }
}
