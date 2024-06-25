import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/widgets/verification_form.dart';

setVerificationCodeSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) {
      final height = MediaQuery.of(context).size.height;
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(8),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.05),
                const Text(
                  'Reset Password',
                  style: Styless.textStyle26,
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Enter the code that was sent to your email address ',
                    style: Styless.textStyle16.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  padding: const EdgeInsets.only(left: 8),
                  child: const Text(
                    'Enter the 6 digits code',
                    style: Styless.textStyle16,
                  ),
                ),
                SizedBox(height: height * 0.03),
                VerificationForm(),
              ],
            ),
          ),
        ),
      );
    },
  );
}
