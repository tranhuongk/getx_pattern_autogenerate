import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_controller.dart';
import 'package:getx_pattern_form/app/translations/app_translations.dart';
import 'package:getx_pattern_form/app/utils/common.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppTranslationKey.home.tr)),
      body: Container(
        child: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    AppTranslationKey.disc.tr,
                  ),
                  Text(
                    '${controller.counter}',
                    style: Theme.of(context).textTheme.headline4,
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
