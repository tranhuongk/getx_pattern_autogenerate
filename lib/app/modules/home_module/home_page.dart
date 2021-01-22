import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/modules/home_module/home_controller.dart';
import '../../../app/utils/strings.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    HomeController _homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(title: Text(homeTitle.tr)),
      body: Container(
        child: GetX<HomeController>(
          builder: (_) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  disc.tr,
                ),
                Text(
                  '${_homeController.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _homeController.increase();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
