import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/modules/home_module/home_controller.dart';
import '../../../app/utils/strings.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(homeTitle.tr)),
      body: Container(
        child: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    disc.tr,
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
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
