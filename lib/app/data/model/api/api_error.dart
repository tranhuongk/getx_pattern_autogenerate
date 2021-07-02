import 'dart:developer';

abstract class ApiErrors implements Exception {
  ApiErrors({String? message, String? name}) {
    log('', error: message, name: name ?? "");
  }
}

class UnknownError extends ApiErrors {
  UnknownError({String? message})
      : super(message: message, name: 'UnknownError') {
    if (message == null) message = 'Unknown error! Please try again after!';
  }
}

class TimeoutError extends ApiErrors {
  TimeoutError({String? message})
      : super(message: message, name: 'TimeoutError') {
    if (message == null)
      message = 'Connection timeout. Please try again after!';
  }
}

class NoConnectionError extends ApiErrors {
  NoConnectionError({String? message})
      : super(message: message, name: 'NoConnectionError') {
    if (message == null) message = 'No connection. Please check your internet!';
  }
}

class UnauthorizeError extends ApiErrors {
  UnauthorizeError({String? message})
      : super(message: message, name: 'UnauthorizeError') {
    if (message == null) message = 'Unauthorize. Please login and try again!';
  }
}
