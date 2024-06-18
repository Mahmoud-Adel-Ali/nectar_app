import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';
import 'package:nectar_app/features/auth/presentation/widgets/sign_up_form.dart';

import 'login_and_signup_last_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.signupBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.asset(AppImages.carrot, height: height * 0.25),
            SizedBox(height: height * 0.01),
            const Text(
              "Sign Up",
              style: Styless.textStyle26,
            ),
            SizedBox(height: height * 0.008),
            const Text("Enter your credentials to continue",
                style: Styless.textStyle14),
            const SignUpForm(),
            SizedBox(height: height * 0.04),
            LoginAndSignUpLastSection(
              firstText: "Already have an account? ",
              navigatorText: "Login",
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ));
              },
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }
}
