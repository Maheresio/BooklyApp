import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slidingAnimation,
      builder: (context, _) => SlideTransition(
        position: _slidingAnimation,
        child: Text(
          'Read free Books',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
