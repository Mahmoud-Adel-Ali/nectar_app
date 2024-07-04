import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/nectar_app_views.dart';
import 'package:nectar_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';
import 'package:nectar_app/features/auth/presentation/views/reset_password_accepted_view.dart';
import 'package:nectar_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:nectar_app/features/onbording/presentation/view/onbording_view.dart';

class AppRoutes {
  //auth views
  static const String login = 'login';
  static const String signUp = 'signup';
  static const String forgetPasswordView = 'forgetPasswordView';
  static const String resetPasswordAcceptedView = 'resetPasswordAcceptedView';

  static const String nectarViews = 'nectarViews';
  static const String onBordingView = 'onBordingView';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case signUp:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case forgetPasswordView:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView());
      case resetPasswordAcceptedView:
        return MaterialPageRoute(
            builder: (context) => const ResetPasswordAcceptedView());
      case nectarViews:
        return MaterialPageRoute(builder: (context) => const NectarAppViews());
      case onBordingView:
        return MaterialPageRoute(builder: (context) => const OnbordingView());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}
