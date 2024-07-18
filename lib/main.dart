import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar_app/core/databases/cache/cache_helper.dart';
import 'package:nectar_app/core/services/services_locator.dart';
import 'package:nectar_app/nectar_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  await getit<CacheHelper>().init();
  // this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const NectarApp());
  });
}
