import 'package:chat_app/utils/http/dio_auth_interceptor.dart';
import 'package:chat_app/utils/providers/connectivity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}

final dioProvider = Provider((ref) {
  final dio = Dio();

  ref.onDispose(() {
    ref.cancelToken().cancel();
    dio.close;
  });

  dio.interceptors.addAll([
    AuthorizationInterceptor(ref),
    PrettyDioLogger(requestBody: true, requestHeader: true)
  ]);

  if (kDebugMode) {
    dio.interceptors
        .add(PrettyDioLogger(requestBody: true, requestHeader: true));
  }

  final connectivity = ref.watch(connectivityProvider);

  // only make request when internet is available
  connectivity.whenData((value) {
    if (value != ConnectivityResult.wifi ||
        value != ConnectivityResult.ethernet ||
        value != ConnectivityResult.mobile) {
      throw Exception("No internet connections");
    }
  });

  return dio;
});
