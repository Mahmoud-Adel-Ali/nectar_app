import 'package:flutter/material.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';
import 'package:nectar_app/features/onbording/presentation/view/onbording_view.dart';

void main() {
  runApp(const NectarApp());
}


class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Nectar',
      theme: ThemeData(
        fontFamily: FontFamilyHelper.gilroy
      ),
      debugShowCheckedModeBanner: false,
      home: const OnbordingView(),
    );
  }
}