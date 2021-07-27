import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';

class RadioButton<T> extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.title,
    this.width,
    this.height,
    this.decoration,
  }) : super(key: key);

  final T value;
  final T groupValue;
  final Function(T?) onChanged;
  final String? title;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () => onChanged(value),
      pressedOpacity: 0.7,
      padding: EdgeInsets.zero,
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              border: Border.all(color: AppColors.gray2),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
        height: height ?? 50,
        width: width ?? double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(width: 15),
            Expanded(
              child: Text(
                title ?? 'Type something',
                style: AppTextStyles.baseStyle,
              ),
            ),
            SizedBox(width: 15),
            Radio<T>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            // SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

class CheckBoxButton extends StatelessWidget {
  const CheckBoxButton({
    Key? key,
    required this.value,
    required this.onPressed,
    this.title,
    this.width,
    this.height,
    this.decoration,
  }) : super(key: key);

  final bool value;
  final Function() onPressed;
  final String? title;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      pressedOpacity: 0.7,
      padding: EdgeInsets.zero,
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              border: Border.all(color: AppColors.gray2),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
        height: height ?? 50,
        width: width ?? double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(width: 15),
            Expanded(
              child: Text(
                title ?? 'Type something',
                style: AppTextStyles.baseStyle,
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: onPressed,
              child: Radio(
                value: value,
                groupValue: value ? value : true,
                fillColor: MaterialStateProperty.resolveWith((states) {
                  if (value) {
                    return AppColors.kPrimaryColor;
                  }
                  return AppColors.gray2;
                }),
                onChanged: null,
              ),
            ),
            // SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
