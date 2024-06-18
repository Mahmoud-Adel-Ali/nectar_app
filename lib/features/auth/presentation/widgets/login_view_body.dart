import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:nectar_app/features/auth/presentation/widgets/login_and_signup_last_section.dart';
import 'package:nectar_app/features/auth/presentation/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.loginBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.asset(AppImages.carrot, height: height * 0.25),
            const Text(
              "Loging",
              style: Styless.textStyle26,
            ),
            const Text("Enter your emails and password",
                style: Styless.textStyle14),
            const LoginForm(),
            SizedBox(height: height * 0.02),
            LoginAndSignUpLastSection(
              firstText: "Don’t have an account? ",
              navigatorText: "Singup",
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
