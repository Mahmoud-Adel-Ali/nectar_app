import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.textColor,
  });
  final Function()? onPressed;
  final Widget child;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? AppColors.mainColor,
      textColor: textColor ?? Colors.white,
      minWidth: 360,
      height: 55,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}
