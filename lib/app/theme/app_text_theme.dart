import 'app_colors.dart';
import 'package:flutter/material.dart';

/// Standardized textstyle
/// FontWeight + FontSize + Color + FontStyle + decoration
/// example:
/// ```
/// static const TextStyle normal10VermilionItalicUnderline = TextStyle(
///     fontWeight: FontWeight.normal,
///     fontSize: 10.nsp,
///     color: AppColors.vermilion,
///     fontStyle: FontStyle.italic,
///     decoration: TextDecoration.underline,
/// );
/// ```
class AppTextStyles {
  AppTextStyles._();

  static const TextStyle normal16White = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColors.white,
    fontSize: 16,
  );
  static const TextStyle medium16White = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontSize: 16,
  );
  static const TextStyle semiBold16White = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 16,
  );
  static const TextStyle bold16White = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontSize: 16,
  );

  static const TextStyle normal16Black = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    fontSize: 16,
  );
  static const TextStyle medium16Black = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 16,
  );
  static const TextStyle semiBold16Black = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontSize: 16,
  );
  static const TextStyle bold16Black = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    fontSize: 16,
  );

  static const TextStyle normal16PrimaryColor = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColors.kPrimaryColor,
    fontSize: 16,
  );
  static const TextStyle medium16PrimaryColor = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.kPrimaryColor,
    fontSize: 16,
  );
  static const TextStyle semiBold16PrimaryColor = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.kPrimaryColor,
    fontSize: 16,
  );
  static const TextStyle bold16PrimaryColor = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
    fontSize: 16,
  );
}
