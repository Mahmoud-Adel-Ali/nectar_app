import 'package:flutter/material.dart';

class OnbordingViewBody extends StatelessWidget {
  const OnbordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/onbording_background.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
