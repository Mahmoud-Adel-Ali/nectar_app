import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar_app/features/auth/presentation/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.blue,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SignUpViewBody(),
      ),
    );
  
  }
}