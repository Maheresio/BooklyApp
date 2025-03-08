import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../manager/similar_books/similar_books_cubit.dart';
import 'custom_book_image.dart';

class SimilarBookslistView extends StatelessWidget {
  const SimilarBookslistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ListView.separated(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => CustomBookImage(
                bookModel: state.books[index],
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 12.w,
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
