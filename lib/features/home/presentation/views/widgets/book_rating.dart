import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {this.mainAxisAlignment = MainAxisAlignment.center, super.key});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.amber,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        SizedBox(
          width: 8.w,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
