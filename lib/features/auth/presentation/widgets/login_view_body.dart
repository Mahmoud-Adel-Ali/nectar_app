import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.loginBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.carrot),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Loging",
                style: Styless.textStyle26,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: double.infinity,
              child: Text("Enter your emails and password",
                  style: Styless.textStyle14),
            ),
          ],
        ),
      ),
    );
  }
}
