import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:getx_pattern_form/app/routes/app_pages.dart';
import 'package:getx_pattern_form/app/theme/app_theme.dart';
import 'package:getx_pattern_form/app/translations/app_translations.dart';
import 'package:getx_pattern_form/app/utils/common.dart';
import 'package:getx_pattern_form/app/utils/extensions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    "Your device locale: ${Get.deviceLocale}".logStr(name: 'Locale');
    return GestureDetector(
      // Dismiss keyboard when clicked outside
      onTap: () => Common.dismissKeyboard(),
      child: GetMaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          defaultScaleFactor: 1.2,
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: ColoredBox(color: AppColors.white),
        ),
        initialRoute: AppRoutes.INITIAL,
        theme: AppThemes.themData,
        getPages: AppPages.pages,
        locale: AppTranslation.locale,
        translationsKeys: AppTranslation.translations,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
