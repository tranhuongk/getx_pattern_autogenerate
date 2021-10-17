import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/translations/en_US.dart';
import 'package:getx_pattern_form/app/translations/vi_VN.dart';

class AppTranslationKey {
  AppTranslationKey._();

  // API Error
  static String get unknownError => "unknownError".tr;
  static String get timeoutError => "timeoutError".tr;
  static String get noConnectionError => "noConnectionError".tr;
  static String get unauthorizedError => "unauthorizedError".tr;
  static String get tryAgain => "tryAgain".tr;
  static String get identify => "identify".tr;
  static String get notMatch => "notMatch".tr;
  static String get noEmpty => "noEmpty".tr;
}

class AppTranslation {
  AppTranslation._();

  static final Locale locale = Get.deviceLocale;
  static final Map<String, Map<String, String>> translations = {
    'en': en_US,
    'vi': vi_VN,
  };
}
