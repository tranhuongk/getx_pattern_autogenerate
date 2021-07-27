import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';

class Loading extends StatelessWidget {
  Loading({
    this.title,
    this.opacity,
    this.loadingType = LoadingType.ChasingDots,
  });
  final String? title;
  final double? opacity;
  final LoadingType loadingType;

  Widget getLoading() {
    switch (loadingType) {
      case LoadingType.DualRing:
        return SpinKitDualRing(
          color: AppColors.kPrimaryColor,
          size: 50,
        );
      case LoadingType.DoubleBounce:
        return SpinKitDoubleBounce(
          color: AppColors.kPrimaryColor,
          size: 50,
        );
      default:
        return SpinKitChasingDots(
          color: AppColors.kPrimaryColor,
          size: 50,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(opacity ?? 1),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: getLoading(),
            ),
          ),
          if (title != null)
            Positioned(
              bottom: 20,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SafeArea(
                  child: Center(
                    child: Text(
                      title!,
                      style: AppTextStyles.bold16White,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

enum LoadingType {
  DualRing,
  ChasingDots,
  DoubleBounce,
}
