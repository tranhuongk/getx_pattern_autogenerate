import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_controller.dart';
import 'package:getx_pattern_form/app/utils/common.dart';
import 'package:getx_pattern_form/app/utils/strings.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.homeTitle.tr)),
      body: Container(
        child: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    AppStrings.disc.tr,
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
