import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/modules/template_module/template_controller.dart';

class TemplatePage extends GetWidget<TemplateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Template'.tr)),
      body: Container(
        child: Obx(() => Text(controller.text)),
      ),
    );
  }
}
