import 'package:get_it/get_it.dart';
import 'package:nectar_app/core/databases/cache/cache_helper.dart';

final getit = GetIt.instance;

void setupServicesLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
}
