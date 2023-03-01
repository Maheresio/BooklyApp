import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookModel});

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(
          height: 110.h,
          width: 80.w,
          child: CustomBookImage(
    
              bookModel: bookModel),
        ),
       
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: kHorizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: Text(
                  bookModel.volumeInfo.title!,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGTSectraFine,
                    fontWeight: FontWeight.normal,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  bookModel.volumeInfo.authors!.first,
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Text(
                    'Free',
                    style: Styles.textStyle18,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  const BookRating(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
