import 'dart:developer';
import 'package:getx_pattern_form/app/translations/app_translations.dart';

abstract class ApiErrors implements Exception {
  final String message = "";
  ApiErrors({String? name}) {
    log(message, name: name ?? "");
  }
}

class UnknownError extends ApiErrors {
  @override
  final String message = AppTranslationKey.unknownError;
  UnknownError() : super(name: 'UnknownError');
}

class TimeoutError extends ApiErrors {
  @override
  final String message = AppTranslationKey.timeoutError;
  TimeoutError() : super(name: 'TimeoutError');
}

class NoConnectionError extends ApiErrors {
  @override
  final String message = AppTranslationKey.noConnectionError;
  NoConnectionError() : super(name: 'NoConnectionError');
}

class UnauthorizedError extends ApiErrors {
  @override
  final String message = AppTranslationKey.unauthorizedError;
  UnauthorizedError() : super(name: 'UnauthorizeError');
}
