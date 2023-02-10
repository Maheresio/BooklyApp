import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';

import 'custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 20,
                bottom: 36,
              ),
              child: CustomBookDetailsAppBar(),
            ),
            BookDetailsSection(),
            SizedBox(
              height: 37,
            ),
            Expanded(child: SimilarBooksSection()),
          ],
        )),
      ],
    );
  }
}
