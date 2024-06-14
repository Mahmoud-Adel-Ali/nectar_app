import 'package:flutter/material.dart';
import 'package:nectar_app/features/onbording/presentation/view/onbording_view.dart';

void main() {
  runApp(const NectarApp());
}


class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Nectar',
      debugShowCheckedModeBanner: false,
      home: OnbordingView(),
    );
  }
}