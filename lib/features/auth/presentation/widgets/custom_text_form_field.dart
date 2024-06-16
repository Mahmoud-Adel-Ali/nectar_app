// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, this.hintText, this.obscureText = false, this.onChange,this.suffixIcon});
  String? hintText;
  bool? obscureText;
  Function(String)? onChange;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!, // show_Text or no
      validator: (text) {
        if (text!.isEmpty) {
          return "this field is rquired";
        }
        return null;
      },
      onChanged: onChange,
      style: Styless.textStyle18,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: Styless.textStyle16,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        suffixIcon:suffixIcon,
      ),
    );
  }
}
