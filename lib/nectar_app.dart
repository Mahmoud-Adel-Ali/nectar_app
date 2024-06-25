
import 'package:flutter/material.dart';
import 'package:nectar_app/core/databases/cache/cache_helper.dart';
import 'package:nectar_app/core/databases/cache/cache_keys.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';
import 'package:nectar_app/core/services/services_locator.dart';
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';
import 'package:nectar_app/features/onbording/presentation/view/onbording_view.dart';
import 'package:nectar_app/nectar_app_views.dart';

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nectar',
      theme: ThemeData(fontFamily: FontFamilyHelper.gilroy),
      debugShowCheckedModeBanner: false,
      home: getit<CacheHelper>().getBoolean(CacheKeys.onbordingVisited) ?? false
          ? 
          // const NectarAppViews() 
           const LoginView()
          : const OnbordingView(),
    );
  }
}
