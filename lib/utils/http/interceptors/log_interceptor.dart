import 'package:dio/dio.dart';

import '../../../config.dart';

class LogsInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) async {
    if (Config.DEBUG) {
      print("url：${options.baseUrl}${options.path}");
      //print("request：${options.queryParameters}");
      // print("body：${options.data}");
      // print('Request header: ' + options.headers.toString());
      // if (options.data != null) {
      //   print('data: ' + options.data.toString());
      // }
    }
    return options;
  }

  @override
  onResponse(Response response) async {
    if (Config.DEBUG) {
      if (response != null) {
        // print('respose: ' + response.toString());
      }
    }
    return response;
  }

  @override
  onError(DioError err) async {
    if (Config.DEBUG) {
      print('err: ' + err.toString());
      print('err.response: ' + err.response?.toString() ?? "");
    }
    return err;
  }
}
