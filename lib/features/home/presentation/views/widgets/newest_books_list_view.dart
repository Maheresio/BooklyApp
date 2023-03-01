import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'newest_books_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView(
      {this.physics = const NeverScrollableScrollPhysics(), super.key});

  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            itemCount: state.books.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: physics,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>
                NewestBooksListViewItem(bookModel: state.books[index]),
            separatorBuilder: (context, index) => SizedBox(
              height: 15.w,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
