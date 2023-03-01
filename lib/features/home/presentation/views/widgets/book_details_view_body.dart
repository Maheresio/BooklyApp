import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
             Padding(
              padding: EdgeInsetsDirectional.only(
                top: 5.h,
                bottom: 5.h,
              ),
              child: CustomBookDetailsAppBar(),
            ),
            BookDetailsSection(bookModel: bookModel),
           
            const Expanded(child: SimilarBooksSection()),
          ],
        )),
      ],
    );
  }
}
