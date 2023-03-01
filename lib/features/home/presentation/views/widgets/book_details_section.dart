import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_action_button.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .69.sh,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 75.w,
            ),
            child:  CustomBookImage(
             bookModel: bookModel,
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Text(
            bookModel.volumeInfo.title!,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              bookModel.volumeInfo.authors?.first??'',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(),
           SizedBox(
            height: 15.h,
          ),
          const BookActionButton(),
        ],
      ),
    );
  }
}
