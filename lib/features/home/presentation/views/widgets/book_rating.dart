import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
            color: const Color(
              0xff707070,
            ),
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
