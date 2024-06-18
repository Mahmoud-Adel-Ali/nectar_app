import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';

class ResetPasswordAcceptedView extends StatefulWidget {
  const ResetPasswordAcceptedView({super.key});

  @override
  State<ResetPasswordAcceptedView> createState() =>
      _ResetPasswordAcceptedViewState();
}

class _ResetPasswordAcceptedViewState extends State<ResetPasswordAcceptedView> {
  void navigateToLoginView() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginView(),
        ),
        (route) => false,
      );
    }).then(
      (value) {
        showSnackBar(context,
            message: "You can login now with new password",
            backgroundColor: AppColors.mainColor);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    navigateToLoginView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: AspectRatio(
                aspectRatio: 2.6 / 3,
                child: Image.asset(AppImages.acceptedResetingpasswordImage),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Congratulations",
              style: Styless.textStyle28.copyWith(
                fontWeight: FontWeight.w800,
                color: const Color(0xff181725),
                fontFamily: FontFamilyHelper.poppins,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Your change Password Is Success\nWelcome to our app",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
