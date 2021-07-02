import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';

class Common {
  Common._();

  static void showError(String error) {
    Get.showSnackbar(GetBar(
      messageText: Text(
        error,
        style: AppTextStyles.bold16White,
      ),
      margin: EdgeInsets.all(20),
      borderRadius: 24,
      backgroundColor: AppColors.redAccent,
      duration: Duration(milliseconds: 2000),
    ));
  }

  static void showLoading() {
    Get.dialog(
      Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: AppColors.gray2,
          ),
          child: SpinKitFadingCircle(
            size: 50,
            color: AppColors.red,
          ),
        ),
      ),
      barrierColor: AppColors.white.withOpacity(0.8),
      barrierDismissible: true,
      transitionCurve: Curves.easeInOutBack,
    );
  }

  static void dismissKeyboard() => Get.focusScope!.unfocus();
}
