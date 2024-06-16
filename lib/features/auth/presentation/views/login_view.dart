import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar_app/features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
        body: LoginViewBody(),
      ),
    );
  }
}
