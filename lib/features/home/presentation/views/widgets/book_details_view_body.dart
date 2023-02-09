import '../../../../../core/utils/styles.dart';
import 'book_action_button.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(
            top: 20,
            bottom: 36,
          ),
          child: CustomBookDetailsAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 75.w,
          ),
          child: const FeaturedListViewItem(),
        ),
        const SizedBox(
          height: 37,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
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
        const SizedBox(
          height: 37,
        ),
        const BookActionButton(),
      ],
    );
  }
}
