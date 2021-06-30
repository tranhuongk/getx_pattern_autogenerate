import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Center(
        child: SpinKitChasingDots(
          color: AppColors.black,
          size: 50,
        ),
      ),
    );
  }
}
