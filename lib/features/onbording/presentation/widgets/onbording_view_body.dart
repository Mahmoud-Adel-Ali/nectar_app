import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';

class OnbordingViewBody extends StatelessWidget {
  const OnbordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onbording_background),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AppImages.white_carrot),
            const SizedBox(height: 10),
            Text(
              "Welcome \n to our store",
              textAlign: TextAlign.center,
              style: Styless.textStyle28.copyWith(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            Opacity(
              opacity: 0.6,
              child: Text(
                "Ger your groceries in as fast as one hour",
                style: Styless.textStyle16.copyWith(
                  color: const Color(0xffFCFCFC),
                ),
              ),
            ),
            const SizedBox(height: 40),
            CustomButtom(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ));
              },
              child: const Text(
                "Get Started",
                style: Styless.textStyle18,
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
