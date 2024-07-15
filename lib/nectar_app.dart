import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/databases/cache/cache_helper.dart';
import 'package:nectar_app/core/databases/cache/cache_keys.dart';
import 'package:nectar_app/core/helper/font_family_helper.dart';
import 'package:nectar_app/core/services/services_locator.dart';
import 'package:nectar_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:nectar_app/features/auth/presentation/manager/auth/auth_cubit.dart';
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';
import 'package:nectar_app/features/onbording/presentation/view/onbording_view.dart';

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Change the status bar color and brightness
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return BlocProvider(
      create: (context) => AuthCubit(
          authRepoImplementation:
              AuthRepoImplementation(dio: DioConsumer(dio: Dio()))),
      child: MaterialApp(
        title: 'Nectar',
        theme: ThemeData(
          fontFamily: FontFamilyHelper.gilroy,
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
        ),
        debugShowCheckedModeBanner: false,
        home:
            getit<CacheHelper>().getBoolean(CacheKeys.onbordingVisited) ?? false
                ? const LoginView()
                : const OnbordingView(),
      ),
    );
  }
}
