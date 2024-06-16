// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.onChange,
    this.suffixIcon,
    this.validator,
  });
  String? hintText;
  bool? obscureText;
  Function(String)? onChange;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!, // show_Text or no
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChange,
      style: Styless.textStyle18,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: Styless.textStyle16,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
