import 'dart:io';

import 'package:dio/dio.dart';

class Net {
  late Dio dio;

  Net._() {
    dio = Dio();
    dio.options = BaseOptions(
        baseUrl: "https://www.wanandroid.com",
        connectTimeout: 5000,
        sendTimeout: 5000,
        receiveTimeout: 5000,
        // headers: {
        //   "token": "23232"
        // },
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json
    );
    dio.interceptors.add(InterceptorsWrapper(
        // onRequest: (options, handler) {
        //   print("请求参数---> ${options.queryParameters}");
        //   return handler.next(options);
        // },
        // onResponse: (res, handler) {
        //   print("返回结果--->$res");
        //   return handler.next(res);
        // },
        onError: (e, handler) {
          // print("请求错误--->${e.type.toString()}");
          print("请求错误--->${e.message}");
        }
    ));
  }

  static Net get instance => _getInstance();
  static Net? _instance;

  static Net _getInstance() {
    _instance ??= Net._();
    return _instance!;
  }
}
