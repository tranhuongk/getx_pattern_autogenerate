import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_controller.dart';
import 'package:getx_pattern_form/app/utils/strings.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(homeTitle.tr)),
      body: Container(
        child: GetX<HomeController>(
            init: HomeController(),
            builder: (_) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      disc.tr,
                    ),
                    Text(
                      '${Get.find<HomeController>().counter}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<HomeController>().increase();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
