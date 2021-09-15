import 'package:flutter/material.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';
import 'package:getx_pattern_form/app/utils/widgets/app_button/base_button.dart';

class AppButton extends StatelessWidget {
  AppButton({
    required this.onPressed,
    this.text,
    this.color = AppColors.kPrimaryColor,
    this.style = AppTextStyles.medium16White,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.space = 12,
  }) {
    this.isOutline = false;
  }

  AppButton.outline({
    required this.onPressed,
    this.text,
    this.color = AppColors.kPrimaryColor,
    this.style = AppTextStyles.medium16White,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.space = 12,
  }) {
    this.isOutline = true;
  }

  late final bool isOutline;
  final String? text;
  final VoidCallback? onPressed;
  final Color color;
  final TextStyle style;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets padding;
  final double space;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: BaseButton(
        onPressed: onPressed,
        color: isOutline ? AppColors.transparent : color,
        child: Container(
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
                  child: prefixIcon!,
                ),
              if (text != null)
                Text(
                  text ?? "",
                  style: isOutline ? style.copyWith(color: color) : style,
                ),
              if (suffixIcon != null)
                Padding(
                  padding: EdgeInsets.only(right: text == null ? 0 : space),
                  child: suffixIcon!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
