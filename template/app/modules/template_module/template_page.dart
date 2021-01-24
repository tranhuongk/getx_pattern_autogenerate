import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/modules/template_module/template_controller.dart';

class TemplatePage extends GetView<TemplateController> {
  @override
  Widget build(BuildContext context) {
    TemplateController _templateController = Get.find<TemplateController>();
    return Scaffold(
      appBar: AppBar(title: Text('Template'.tr)),
      body: Container(
        child: GetX<TemplateController>(
          builder: (_) => Text(_templateController.text),
        ),
      ),
    );
  }
}
