class AppUrl {
  AppUrl._();

  static const String staging = "https://raw.githubusercontent.com";

  /// base url
  static const String baseUrl = staging;

  /// receiveTimeout
  static const int receiveTimeout = 15000;

  /// connectTimeout
  static const int connectionTimeout = 15000;
  static const String getAllFlagGetails = '/DevTides/countries/master/countriesV2.json';
}
