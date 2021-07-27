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

  static const TextStyle baseStyle = TextStyle(
    fontFamily: '',
    decoration: TextDecoration.none,
  );

  static final TextStyle bold16White = baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontSize: 16,
  );
}
