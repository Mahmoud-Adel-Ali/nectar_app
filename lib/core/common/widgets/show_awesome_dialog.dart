import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

showAwesomDialog(BuildContext context,
    {required String title,
    required String desc,
    String? btnOkText,
    void Function()? btnOkOnPress,
    DialogType dialogType = DialogType.success}) {
  return AwesomeDialog(
    context: context,
    animType: AnimType.rightSlide,
    title: title,
    desc: desc,
    descTextStyle: Styless.textStyle16,
    titleTextStyle: Styless.textStyle20bold,
    dialogType: dialogType,
    btnCancelOnPress: () {},
    btnOkOnPress: btnOkOnPress ?? () {},
    btnOkText: btnOkText ?? ' Ok',
  )..show();
}
