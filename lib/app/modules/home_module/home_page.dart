import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/modules/home_module/home_controller.dart';
import 'package:getx_pattern_form/app/utils/widgets/app_button/app_button.dart';
import 'package:getx_pattern_form/app/utils/widgets/app_text_field.dart/app_text_field.dart';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppTextField(),
              SizedBox(height: 16),
              AppButton(
                onPressed: () {},
                text: "Tiếp tục".toUpperCase(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
