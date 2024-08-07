import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';

abstract class Styless {
  static const TextStyle textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.greyText,
  );
  static const TextStyle textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.greyText,
  );
  static const TextStyle textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle20bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Color(0xff181725),
    fontFamily: FontFamilyHelper.gilroyBold
  );
  static const TextStyle textStyle22bold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle24Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamilyHelper.gilroyBold,
    color: Color(0xff181725),
  );
  static const TextStyle textStyle16Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamilyHelper.gilroyBold,
    color: Color(0xff181725),
  );
}
