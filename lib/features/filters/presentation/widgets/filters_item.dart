import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';

class FiltersItem extends StatelessWidget {
  const FiltersItem({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });
  final String title;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.mainColor,
        ),
        Text(
          title,
          style: Styless.textStyle18.copyWith(
            color: value ? AppColors.mainColor : const Color(0xff181725),
          ),
        )
      ],
    );
  }
}
