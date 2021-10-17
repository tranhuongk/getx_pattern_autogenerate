import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_pattern_form/app/theme/app_colors.dart';
import 'package:getx_pattern_form/app/theme/app_text_theme.dart';
import 'package:getx_pattern_form/app/translations/app_translations.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key key,
    this.hintText,
    this.errorText,
    this.obscureText,
  }) : super(key: key);
  final String hintText;
  final String errorText;
  final bool obscureText;
  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  RxBool _obscureText = true.obs;
  @override
  void initState() {
    super.initState();
    _obscureText.value = widget.obscureText ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.neutral6,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Obx(
              () => TextField(
                obscureText: _obscureText.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  hintStyle: AppTextStyles.base.neutral3Color.s14.roboto,
                  suffixIcon: widget.obscureText != null
                      ? GestureDetector(
                          onTap: () => _obscureText.value = !_obscureText.value,
                          child: Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: _obscureText.value
                                ? Icon(CupertinoIcons.eye_slash)
                                : Icon(CupertinoIcons.eye),
                          ),
                        )
                      : SizedBox(),
                  suffixIconConstraints: BoxConstraints(
                    maxWidth: 32,
                  ),
                ),
              ),
            ),
          ),
          if (widget.errorText != null && widget.errorText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
                top: 4,
              ),
              child: Text(
                widget.errorText ?? AppTranslationKey.noEmpty,
                style: AppTextStyles.base.s14.redColor,
              ),
            ),
        ],
      ),
    );
  }
}
