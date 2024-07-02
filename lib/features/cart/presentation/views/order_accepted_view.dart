import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';

class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                "Your Order has been\naccepted",
                textAlign: TextAlign.center,
                style: Styless.textStyle28.copyWith(
                  color: const Color(0xff181725),
                ),
              ),
              const SizedBox(height: 30),
               Text(
                "Your items has been placcd and is on\nit’s way to being processed",
                style: Styless.textStyle16.copyWith(
                  color: const Color(0xff7C7C7C),
                ),
                textAlign: TextAlign.center,
              ),
            ],
        ),
      ),
    );
  }
}