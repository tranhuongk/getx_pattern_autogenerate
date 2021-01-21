import 'package:get/get.dart';
import 'package:getx_pattern_form/app/data/provider/home_provider.dart';
import 'package:getx_pattern_form/app/data/repository/home_repository.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: HomeRepository(
          provider: HomeProvider(),
        ),
      ),
    );
  }
}
