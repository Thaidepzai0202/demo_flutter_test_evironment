import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../di.dart';
import 'http_explorer_module.dart';

@module
abstract class NetworkModule {
  @injectable
  Dio get dio {
    final Dio dio = Dio();

      final httpExplorerInterceptor = getIt<HttpExplorer>().explorerInterceptor;
      if (httpExplorerInterceptor != null) {
        dio.interceptors.add(httpExplorerInterceptor);
      }

    // dio.interceptors.add(analyticsCheckingInterceptor);
    // dio.interceptors.add(infoInterceptor);
    // dio.interceptors.add(dioLoggerInterceptor);

    return dio;
  }
}