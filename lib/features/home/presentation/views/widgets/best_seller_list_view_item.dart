import '../../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60.w,
          height: 90.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: Colors.red,
          ),
          child: Image.asset(
            AssetData.book1,
            fit: BoxFit.cover,
          ),
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
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGTSectraFine,
                    fontWeight: FontWeight.normal,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    width: 35.w,
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
