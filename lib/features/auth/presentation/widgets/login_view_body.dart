import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Image.asset(AppImages.carrot),
          ),
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
    );
  }
}
