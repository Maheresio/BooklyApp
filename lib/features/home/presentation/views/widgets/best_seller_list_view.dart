import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView(
      {this.physics = const NeverScrollableScrollPhysics(), super.key});

  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: physics,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      separatorBuilder: (context, index) => SizedBox(
        height: 15.w,
      ),
    );
  }
}
