import 'package:flutter/material.dart';
import 'package:getx_pattern_form/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashPage extends GetView {
  @override
  Widget build(BuildContext context) {
    ///Your Function in the Future
    Future.delayed(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      Get.offNamed(Routes.HOME);
    });

    ///Your widget
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Get.isDarkMode ? Brightness.dark : Brightness.light,
      ),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: FlutterLogo(
                size: Get.size.width * 0.4,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                bottom: Get.context.mediaQueryPadding.bottom + 10,
              ),
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
