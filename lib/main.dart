import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_binding.dart';
import 'package:getx_pattern_form/app/routes/app_pages.dart';
import 'package:getx_pattern_form/app/theme/app_theme.dart';
import 'package:getx_pattern_form/app/translations/app_translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Locale: ' + Get.deviceLocale.toString());
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      initialRoute: Routes.HOME,
      theme: appThemeData,
      getPages: AppPages.pages,
      // home: HomePage(),
      locale: Get.deviceLocale,
      translationsKeys: AppTranslation.translations,
    );
  }
}
