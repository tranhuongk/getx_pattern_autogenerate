import 'package:get/get.dart';

import '../../../app/data/provider/template_provider.dart';
import '../../../app/modules/template_module/template_controller.dart';

class TemplateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TemplateController>(
      () => TemplateController(
        provider: TemplateProvider(),
      ),
    );
  }
}
