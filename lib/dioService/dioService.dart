import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioService {
  Dio dio = Dio();
  final BuildContext context;
  DioService({required this.context});

  Dio request(BuildContext context){
    dio.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (request, handler) {
        
      },
      onError: (DioError error, handler) {
        
      },
      onResponse: (response, handler) {
        
      },
    ));
    return dio;
  }
}