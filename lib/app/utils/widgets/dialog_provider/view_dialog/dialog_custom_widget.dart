import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lttm/app/theme/app_colors.dart';
import 'package:lttm/app/theme/app_text_theme.dart';
import 'package:lttm/app/utils/widgets/app_button/base_button.dart';
import 'package:lttm/app/utils/widgets/app_divider/app_divider.dart';

class DialogCustomWidget extends StatelessWidget {
  const DialogCustomWidget(
    this.content, {
    this.title,
    this.titleStyle,
    this.iconSize = 28,
    this.maxHeight,
    this.maxWidth,
    this.padding,
  });

  final Widget content;
  final String? title;
  final TextStyle? titleStyle;
  final double iconSize;
  final double? maxHeight;
  final double? maxWidth;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        constraints: BoxConstraints(maxWidth: maxWidth ?? Get.width / 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0).copyWith(bottom: 0),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: title == null
                        ? SizedBox()
                        : Center(
                            child: Text(
                              title ?? "",
                              style: AppTextStyles.semiBold16Black,
                            ),
                          ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: BaseButton(
                        child: Icon(
                          Icons.clear,
                          color: AppColors.lightGray,
                          size: iconSize,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (title != null)
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: AppDivider(),
              ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: maxHeight ?? Get.height / 2.5,
              ),
              child: SingleChildScrollView(
                padding: padding ?? EdgeInsets.all(16),
                child: content,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
