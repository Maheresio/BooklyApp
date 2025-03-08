import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'newest_books_list_view.dart';
import 'custom_home_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: kHorizontalPadding),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHomeAppBar(),
                const FeaturedListView(),
                SizedBox(height: 42.h),
                Text(
                  'Newest Books',
                  textAlign: TextAlign.start,
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: '',
                  ),
                ),
                SizedBox(height: 17.h),
              ],
            ),
          ),
        ],
        body: const NewestBooksListView(
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
