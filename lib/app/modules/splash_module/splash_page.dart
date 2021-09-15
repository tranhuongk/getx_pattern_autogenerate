import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/routes/app_pages.dart';
import 'package:getx_pattern_form/app/utils/widgets/app_bar/custom_app_bar.dart';

class SplashPage extends GetView {
  @override
  Widget build(BuildContext context) {
    ///Your Function in the Future
    Future.delayed(Duration(seconds: 2), () {
      // 2s over, navigate to a new page
      Get.offNamed(AppRoutes.HOME);
    });

    ///Your widget
    return Scaffold(
      appBar: CustomAppBar(),
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
                bottom: Get.context!.mediaQueryPadding.bottom + 10,
              ),
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
