import 'package:chat_app/utils/http/dio_auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();

  ref.onDispose(dio.close);

  dio.interceptors.addAll([
    AuthorizationInterceptor(ref),
  ]);

  if (kDebugMode) {
    dio.interceptors
        .add(PrettyDioLogger(requestBody: true, requestHeader: true));
  }
  return dio;
});
