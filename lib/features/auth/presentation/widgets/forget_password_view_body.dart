import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/widgets/forget_password_form.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppImages.loginBackground,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 25,
                ),
              ),
            ),
            Image.asset(AppImages.carrot, height: height * 0.16),
            SizedBox(height: height * 0.06),
            const Text(
              "Forget Password",
              style: Styless.textStyle26,
            ),
            SizedBox(height: height * 0.01),
            const Text(
                "Enter your email for verification process we \nwill send 5 digits code to your email",
                style: Styless.textStyle14),
            const ForgetPasswordForm(),
          ],
        ),
      ),
    );
  }
}
