import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Color? backgroundColor,
    double? elevation,
    Brightness? brightness,
  }) : super(
          backgroundColor: backgroundColor ?? Colors.transparent,
          elevation: elevation ?? 0,
          brightness: brightness ??
              (Get.isDarkMode ? Brightness.dark : Brightness.light),
        );
}
