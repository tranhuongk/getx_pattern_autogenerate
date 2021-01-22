import 'package:get/get.dart';
import '../../app/modules/home_module/home_binding.dart';
import '../../app/modules/home_module/home_page.dart';
import '../../app/modules/splash_module/splash_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
    ),
  ];
}
