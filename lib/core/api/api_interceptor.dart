import 'package:dio/dio.dart';
import 'package:nectar_app/core/api/api_keys.dart';
import 'package:nectar_app/core/databases/cache/cache_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKeys.token] =
        CacheHelper().getString(ApiKeys.token) == null
            ? null
            : 'FOODAPI ${CacheHelper().getString(ApiKeys.token)}';
    super.onRequest(options, handler);
  }
}
