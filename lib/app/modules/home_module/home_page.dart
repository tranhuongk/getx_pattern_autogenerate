import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_controller.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';
import 'package:getx_pattern_form/app/utils/common.dart';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${controller.counter}',
                    style: AppTextStyles.base.s32,
                  ),
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increase();
          Common.showLoading();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
