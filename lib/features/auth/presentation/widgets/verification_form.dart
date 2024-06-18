// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/widgets/reset_password_bottom_sheet.dart';

class VerificationForm extends StatelessWidget {
  VerificationForm({super.key});
  String code = '';
  bool onEditing = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.mainColor,
                width: 3,
              ),
            ),
            alignment: Alignment.center,
            child: FittedBox(
              child: VerificationCode(
                length: 5,
                itemSize: 50,
                fillColor: AppColors.mainColor,
                textStyle: Styless.textStyle18.copyWith(color: Colors.white),
                keyboardType: TextInputType.number,
                underlineColor: Colors.purple,
                cursorColor: Colors.purple,
                onCompleted: (String value) {
                  code = value;
                },
                onEditing: (bool value) {
                  onEditing = value;
                  if (!onEditing) FocusScope.of(context).unfocus();
                },
              ),
            ),
          ),
          const SizedBox(height: 50),
          CustomButtom(
            onPressed: () {
              Navigator.pop(context);
              resetPasswordBottomSheet(context);
            },
            child: const Text(
              "Send Code",
              style: Styless.textStyle18,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
