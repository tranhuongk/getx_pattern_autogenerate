import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
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
      backgroundColor: AppColors.red,
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
            color: AppColors.gray,
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

  static Future<bool> showConfirm({String? title, String? content}) async {
    bool result = false;
    await Get.dialog(
      Platform.isIOS
          ? CupertinoAlertDialog(
              title: Text(
                title ?? 'Delete confirmation',
                style: AppTextStyles.bold16White,
                textAlign: TextAlign.center,
              ),
              content: Text(
                'Are you sure you want to delete this ${content ?? "feature"}?',
                style: AppTextStyles.baseStyle,
                textAlign: TextAlign.center,
              ),
              actions: [
                CupertinoButton(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                  onPressed: () {
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
                CupertinoButton(
                  child: Text('Confirm'),
                  onPressed: () {
                    result = true;
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
              ],
            )
          : AlertDialog(
              title: Text(
                title ?? 'Delete confirmation',
                style: AppTextStyles.bold16White,
              ),
              content: Text(
                title ?? 'Are you sure you want to delete this feature?',
                style: AppTextStyles.baseStyle,
              ),
              actions: [
                CupertinoButton(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                  onPressed: () {
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
                CupertinoButton(
                  child: Text('Confirm'),
                  onPressed: () {
                    result = true;
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
              ],
            ),
      barrierColor: Colors.black26,
      transitionCurve: Curves.easeInOutBack,
    );
    return result;
  }

  static Future showSuccess({String? title}) async {
    Timer? _timer;
    return await Get.dialog(
      Builder(
        builder: (BuildContext builderContext) {
          _timer = Timer(Duration(seconds: 2), () {
            Get.back();
          });

          return Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: AppColors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Get.width * 2 / 3,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      title ?? 'Successful',
                      style: AppTextStyles.baseStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      barrierColor: Colors.black26,
      transitionCurve: Curves.easeInOutBack,
    ).then((val) {
      if (_timer!.isActive) {
        _timer!.cancel();
      }
    });
  }

  static void dismissKeyboard() => Get.focusScope!.unfocus();
}
