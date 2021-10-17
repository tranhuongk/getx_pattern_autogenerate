import 'package:flutter/material.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';
import 'package:getx_pattern_form/app/utils/widgets/app_button/base_button.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton({
    @required this.onPressed,
    this.text,
    this.color = AppColors.kPrimaryColor,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.space = 12,
    this.height = 48,
    this.width = double.infinity,
    this.borderRadius,
  }) {
    this.isOutline = false;
  }

  AppButton.outline({
    @required this.onPressed,
    this.text,
    this.color = AppColors.kPrimaryColor,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.space = 12,
    this.height = 48,
    this.width = double.infinity,
    this.borderRadius,
  }) {
    this.isOutline = true;
  }

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle style;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double space;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  bool isOutline;

  @override
  Widget build(BuildContext context) {
    TextStyle _style = style ?? AppTextStyles.base.w500.s16.whiteColor;
    return Padding(
      padding: margin,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(48),
        child: BaseButton(
          onPressed: onPressed,
          color: isOutline ? AppColors.transparent : color,
          child: Container(
            height: height,
            width: width,
            padding: padding,
            decoration: BoxDecoration(
              border: Border.all(
                color: onPressed != null ? color : color.withOpacity(0.4),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (prefixIcon != null)
                  Padding(
                    padding: EdgeInsets.only(right: text == null ? 0 : space),
                    child: prefixIcon,
                  ),
                if (text != null)
                  Text(
                    text ?? "",
                    style: isOutline ? _style.copyWith(color: color) : _style,
                  ),
                if (suffixIcon != null)
                  Padding(
                    padding: EdgeInsets.only(right: text == null ? 0 : space),
                    child: suffixIcon,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
