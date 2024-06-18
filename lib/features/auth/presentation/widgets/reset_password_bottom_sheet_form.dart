import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/functions/valid.dart';
import 'package:nectar_app/features/auth/presentation/views/reset_password_accepted_view.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';

class ResetPasswordBottomSheetForm extends StatefulWidget {
  const ResetPasswordBottomSheetForm({super.key});

  @override
  State<ResetPasswordBottomSheetForm> createState() =>
      _ResetPasswordBottomSheetFormState();
}

class _ResetPasswordBottomSheetFormState
    extends State<ResetPasswordBottomSheetForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password, confirmPassword;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Email",
            onChange: (data) {
              email = data;
            },
            validator: (value) {
              return validatorOfEmail(value);
            },
          ),
          SizedBox(height: height * 0.04),
          CustomTextFormField(
            hintText: "Password",
            onChange: (data) {
              password = data;
            },
            validator: (value) {
              return validatorOfPassword(value);
            },
          ),
          SizedBox(height: height * 0.04),
          CustomTextFormField(
            hintText: "Confirm Password",
            onChange: (data) {
              password = data;
            },
            validator: (value) {
              return validatorOfPassword(value);
            },
          ),
          SizedBox(height: height * 0.1),
          CustomButtom(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResetPasswordAcceptedView()));
            },
            child: const Text(
              "Reset Password",
              style: Styless.textStyle18,
            ),
          ),
          SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}
