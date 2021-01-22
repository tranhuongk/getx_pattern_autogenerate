import 'package:get/get.dart';
import '../../../app/data/provider/home_provider.dart';
import '../../../app/data/repository/home_repository.dart';
import '../../../app/modules/home_module/home_controller.dart';

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
