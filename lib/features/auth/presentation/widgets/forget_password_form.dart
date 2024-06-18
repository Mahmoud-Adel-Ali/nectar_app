import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/functions/valid.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:nectar_app/features/auth/presentation/widgets/set_verification_code_sheet.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;
  bool hiddenPassword = true;
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
          CustomButtom(
            onPressed: () {
              setVerificationCodeSheet(context);
              if (formKey.currentState!.validate()) {
                // formKey.currentState!.save();
                showSnackBar(context,
                    message: 'done', backgroundColor: Colors.green);
              } else {
                showSnackBar(context, message: 'please fill all fieldes');
              }
            },
            child: const Text(
              "Continue",
              style: Styless.textStyle18,
            ),
          ),
        ],
      ),
    );
  }
}
