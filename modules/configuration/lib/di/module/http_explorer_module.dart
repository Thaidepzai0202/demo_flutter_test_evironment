import 'package:dio/dio.dart';

abstract class HttpExplorer {
  // Alice? get alice;

  Interceptor? get explorerInterceptor;
}