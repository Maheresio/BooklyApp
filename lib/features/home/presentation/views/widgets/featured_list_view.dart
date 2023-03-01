import '../../../../../core/widgets/custom_error_widget.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_circular_indicator.dart';
import 'custom_book_image.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ListView.separated(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail),
              separatorBuilder: (context, index) => SizedBox(
                width: 14.w,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
