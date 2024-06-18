import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/functions/valid.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:nectar_app/features/auth/presentation/widgets/sign_up_service_and_policy.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;
  bool hiddenPassword = true;
  bool emailIsValid = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Username",
            onChange: (data) {
              email = data;
            },
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? "please enter your name"
                  : null;
            },
          ),
          SizedBox(height: height * 0.04),
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
            obscureText: hiddenPassword,
            suffixIcon: IconButton(
              icon: Icon(
                hiddenPassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                hiddenPassword = !hiddenPassword;
                setState(() {});
              },
            ),
          ),
          SizedBox(height: height * 0.02),
          const SignUpServiceAndPolicy(),
          SizedBox(height: height * 0.06),
          CustomButtom(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                showSnackBar(context,
                    message: 'done', backgroundColor: Colors.green);
              } else {
                showSnackBar(context, message: 'please fill all fieldes');
              }
            },
            child: const Text(
              "Sing Up",
              style: Styless.textStyle18,
            ),
          ),
        ],
      ),
    );
  }
}
