import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

showSnackBar(BuildContext context,
    {required String message, Color? backgroundColor}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor ?? Colors.red,
      duration: const Duration(seconds: 3),
      content: Text(
        message,
        style: Styless.textStyle14.copyWith(color: Colors.white),
      ),
    ),
  );
}
