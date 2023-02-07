import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: Colors.red,
      ),
      child: Image.asset(
        AssetData.book1,
        fit: BoxFit.cover,
      ),
    );
  }
}
