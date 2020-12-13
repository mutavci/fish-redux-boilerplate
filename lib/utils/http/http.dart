import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:async';

import '../../config.dart';
import 'interceptors/log_interceptor.dart';

class HttpUtils {
  static Dio dio;

  static const int CONNECT_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 3000;

  static const String GET = 'get';
  static const String POST = 'post';
  static const String PUT = 'put';
  static const String PATCH = 'patch';
  static const String DELETE = 'delete';

  static Future<dynamic> request(String url, {data, method}) async {
    data = data ?? {};
    method = method ?? 'GET';

    data.forEach((key, value) {
      if (url.indexOf(key) != -1) {
        url = url.replaceAll(':$key', value.toString());
      }
    });

    Dio dio = createInstance();

    var result;

    try {
      Response response = await dio.request(url,
          data: data, options: new Options(method: method));
      result = response.data;
    } on DioError catch (e) {
      print('error:' + e.toString());
    }

    return result;
  }

  static Dio createInstance() {
    if (dio == null) {
      BaseOptions option = new BaseOptions(
          baseUrl: Config.HOST,
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          headers: {"user-agent": "dio", "api": "1.0.0"},
          contentType: ContentType.json.toString(),
          responseType: ResponseType.plain);
      dio = new Dio(option);
    }
    dio.interceptors.add(new LogsInterceptors());

    return dio;
  }

  static clear() {
    dio = null;
  }
}
