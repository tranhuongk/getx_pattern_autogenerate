import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  BaseButton({
    required this.child,
    required this.onPressed,
    this.color,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
  });
  final Widget child;
  final VoidCallback? onPressed;
  final Color? color;
  final Color disabledColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      minSize: 0,
      color: color,
      borderRadius: BorderRadius.zero,
      disabledColor: disabledColor,
    );
  }
}
