class Constants {
  const Constants._();

  static const String baseUrl = 'http://youapi';
  static const String login = "auth/login";
  static const String token = 'authToken';

  static const timeout = Duration(seconds: 30);
}

enum LoadDataState { initialize, loading, loaded, error, timeout }
