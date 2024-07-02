import 'package:flutter/material.dart';

class CustomArrowRightButton extends StatelessWidget {
  const CustomArrowRightButton({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.keyboard_arrow_right_outlined,
        size: 30,
      ),
    );
  }
}
