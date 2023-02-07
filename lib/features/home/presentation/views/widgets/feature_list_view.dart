import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import 'feature_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: kHorizontalPadding,
      ),
      child: SizedBox(
        height: 200.h,
        width: double.infinity,
        child: ListView.separated(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const FeaturedListViewItem(),
          separatorBuilder: (context, index) => SizedBox(
            width: 10.w,
          ),
        ),
      ),
    );
  }
}

