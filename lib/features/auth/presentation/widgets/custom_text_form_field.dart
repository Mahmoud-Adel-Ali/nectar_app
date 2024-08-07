// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.onChange,
    this.suffixIcon,
    this.validator,
    this.controller,
  });
  TextEditingController? controller;
  String? hintText;
  bool? obscureText;
  Function(String)? onChange;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!, // show_Text or no
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChange,
      style: Styless.textStyle18,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: Styless.textStyle16,
        suffixIcon: suffixIcon,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.mainColor, width: 3)),
      ),
    );
  }
}
