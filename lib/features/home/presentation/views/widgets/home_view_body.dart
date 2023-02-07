import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: kHorizontalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const FeaturedListView(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Best Seller',
              textAlign: TextAlign.start,
              style: Styles.titleMeduim,
            )
          ],
        ),
      ),
    );
  }
}
