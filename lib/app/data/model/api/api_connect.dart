import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:getx_pattern_form/app/data/model/api/api_error.dart';
import 'package:getx_pattern_form/app/utils/constants.dart';

class ApiConnect extends GetConnect {
  static final ApiConnect _internal = ApiConnect._();
  static final ApiConnect instance = ApiConnect();
  Map<String, dynamic> _reqBody;

  factory ApiConnect() {
    return _internal;
  }

  ApiConnect._() {
    baseUrl = Constants.baseUrl;
    logPrint = print;
    timeout = Constants.timeout;

    httpClient.addRequestModifier((request) {
      print('request');
      logPrint('************** Request **************');
      _printKV('uri', request.url);
      _printKV('method', request.method);
      _printKV('followRedirects', request.followRedirects);
      logPrint('headers:');
      request.headers.forEach((key, v) => _printKV(' $key', v));
      logPrint('data:');
      if (_reqBody != null) _reqBody.forEach((key, v) => _printKV(' $key', v));
      logPrint('*************************************');
      return request;
    });

    httpClient.addResponseModifier((request, response) {
      logPrint('************** Response **************');
      _printKV('uri', response.request?.url);
      _printKV('statusCode', response.statusCode);
      if (response.headers != null) {
        logPrint('headers:');
        response.headers.forEach((key, v) => _printKV(' $key', v));
      }
      logPrint('Response Text:');
      _printAll(response.bodyString);
      logPrint('*************************************');
      return response;
    });
  }

  void Function(Object object) logPrint;

  @override
  Future<Response<T>> get<T>(
    String url, {
    Map<String, String> headers,
    String contentType,
    Map<String, dynamic> query,
    Decoder<T> decoder,
  }) {
    _checkIfDisposed();

    // var box = Hive.box(Constants.HIVE_BOX);
    // String token = box.get(Constants.TOKEN, defaultValue: "");
    Map<String, String> _headers = headers ?? Map<String, String>();
    // _headers["Authorization"] = "Bearer" + token;

    return httpClient.get<T>(
      url,
      headers: _headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
    );
  }

  @override
  Future<Response<T>> post<T>(
    String url,
    dynamic body, {
    String contentType,
    Map<String, String> headers,
    Map<String, dynamic> query,
    Decoder<T> decoder,
    Progress uploadProgress,
  }) {
    _checkIfDisposed();

    // var box = Hive.box(Constants.HIVE_BOX);
    // String token = box.get(Constants.TOKEN, defaultValue: "");
    Map<String, String> _headers = headers ?? Map<String, String>();
    // _headers["Authorization"] = "Bearer" + token;

    _reqBody = body;

    return httpClient.post<T>(
      url,
      body: body,
      headers: _headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    )..whenComplete(() => _reqBody = null);
  }

  void _printKV(String key, Object v) {
    logPrint('$key: $v');
  }

  void _printAll(msg) {
    msg.toString().split('\n').forEach(logPrint);
  }

  void _checkIfDisposed({bool isHttp = true}) {
    if (isDisposed) {
      throw 'Can not emit events to disposed clients';
    }
  }
}

extension ResErr<T> on Response<T> {
  T getRes() {
    final status = this.status;

    if (status.connectionError) {
      throw NoConnectionError();
    }

    try {
      final res = jsonDecode(this.bodyString);

      if (this.isOk) {
        if (res is Map &&
            res['status'] != null &&
            ((res['status'] is bool && !res['status']) ||
                res['status'] is String && res['status'] != 'OK')) {
          if (res['error_message'] != null &&
              res['error_message'].toString().isNotEmpty) {
            throw UnknownError(
              message: res['error_message']?.toString(),
            );
          } else {
            throw UnknownError(
              message: res['message']?.toString(),
            );
          }
        }

        return this.body;
      } else {
        if (status.isServerError) {
          throw UnknownError();
        } else if (status.code == HttpStatus.requestTimeout) {
          throw TimeoutError();
        } else if (this.unauthorized) {
          throw UnauthorizeError(
            message: res['message']?.toString(),
          );
        } else {
          throw UnknownError(
            message: res['message']?.toString(),
          );
        }
      }
    } on FormatException catch (e) {
      throw UnknownError(message: e.toString());
    } on TimeoutException catch (e) {
      throw TimeoutError(
        message: e.message?.toString(),
      );
    }
  }
}
