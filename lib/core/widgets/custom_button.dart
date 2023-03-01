import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    this.text = AppStrings.freePreview,
    this.borderRadius,
    this.style,
    this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? style;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
