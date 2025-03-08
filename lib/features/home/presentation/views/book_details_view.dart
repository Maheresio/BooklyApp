import '../../data/models/book_model/book_model.dart';
import '../manager/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

@override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child:  SafeArea(
          child: BookDetailsViewBody(
              bookModel: widget.bookModel,
          ),
        ),
      ),
    );
  }
}
