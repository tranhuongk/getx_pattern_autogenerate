import 'package:get/get.dart';
import '../../data/provider/template_provider.dart';
import '../../data/repository/template_repository.dart';
import '../template_module/template_controller.dart';

class TemplateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TemplateController>(
      () => TemplateController(
        repository: TemplateRepository(
          provider: TemplateProvider(),
        ),
      ),
    );
  }
}
