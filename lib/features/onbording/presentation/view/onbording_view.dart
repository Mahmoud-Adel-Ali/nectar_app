import 'package:flutter/material.dart';
import 'package:nectar_app/features/onbording/presentation/widgets/onbording_view_body.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnbordingViewBody(),
    );
  }
}
