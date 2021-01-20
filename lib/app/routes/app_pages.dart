import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    )
  ];
}
