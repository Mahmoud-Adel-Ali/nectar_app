import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/favorites/presentation/widgets/error_view_header.dart';

showErrorDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: const ErrorViewHeader(),
        title: Image.asset(AppImages.errorDialogImage, height: 222, width: 222),
        content:  SizedBox(
          height: 100,
          child: Column(
            children: [
              const Text("Oops! Order Failed", style: Styless.textStyle28),
              const SizedBox(height: 15),
              Text(
                "Something went tembly wrong.",
                style: Styless.textStyle16.copyWith(color: const Color(0xff7C7C7C)),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtom(
              child: const Text("Please Try Again", style: Styless.textStyle18),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtom(
              color: Colors.white,
              textColor: AppColors.mainColor,
              child: const Text("Back to home", style: Styless.textStyle18),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}
