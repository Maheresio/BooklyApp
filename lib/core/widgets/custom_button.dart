import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.backgroundColor,
    this.text = AppStrings.freePreview,
    this.borderRadius,
    this.style,
    super.key,
  });

  final String text;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextButton(
        onPressed: () {},
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
