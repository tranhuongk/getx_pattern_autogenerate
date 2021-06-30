import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_binding.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_page.dart';
import 'package:getx_pattern_form/app/modules/splash_module/splash_page.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => SplashPage(),
    ),
  ];
}
