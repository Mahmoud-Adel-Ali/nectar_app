import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class LoginAndSignUpLastSection extends StatelessWidget {
  const LoginAndSignUpLastSection({
    super.key,
    required this.firstText,
    required this.navigatorText,
    required this.onPressed,
  });
  final String firstText;
  final String navigatorText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: Styless.textStyle14,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            navigatorText,
            style: Styless.textStyle16.copyWith(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
