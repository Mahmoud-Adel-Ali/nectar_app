import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar_app/features/onbording/presentation/widgets/onbording_view_body.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnbordingViewBody(),
    );
  }
}