import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          SizedBox(height: height * 0.01),
          Container(
            height: height * 0.05,
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forget password?",
                style: Styless.textStyle14.copyWith(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
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
              "Login",
              style: Styless.textStyle18,
            ),
          ),
        ],
      ),
    );
  }
}
