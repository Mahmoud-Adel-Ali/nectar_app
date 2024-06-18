import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/utils/styless.dart';
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
              return value!.contains(RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                  ? null
                  : "Enter a valid email";
            },
          ),
          SizedBox(height: height * 0.04),
          CustomTextFormField(
            hintText: "Password",
            onChange: (data) {
              password = data;
            },
            validator: (value) {
              return value!.length < 8
                  ? "Enter a valid password : at least 8 chracter"
                  : null;
            },
          ),
          SizedBox(height: height * 0.04),
          CustomTextFormField(
            hintText: "Confirm Password",
            onChange: (data) {
              password = data;
            },
            validator: (value) {
              return value!.length < 8
                  ? "Enter a valid password : at least 8 chracter"
                  : null;
            },
          ),
          SizedBox(height: height * 0.1),
          CustomButtom(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // formKey.currentState!.save();
                showSnackBar(context,
                    message: 'done', backgroundColor: Colors.green);
              } else {
                showSnackBar(context, message: 'please fill all fieldes');
              }
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
