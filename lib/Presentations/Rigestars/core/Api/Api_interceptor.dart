import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void  onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Content-Type"] = "application/json";
    options.headers["lang"] = "ar";
    super.onRequest(options, handler);
  }
}