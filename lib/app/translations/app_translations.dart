import 'package:getx_pattern_form/app/translations/en_US/en_us_translations.dart';
import 'package:getx_pattern_form/app/translations/vi_VN/vi_vn_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en': enUs,
    'vi': viVn,
  };
}
