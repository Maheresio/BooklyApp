import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const BestSellerListViewItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: 15.w,
        ),
      ),
    );
  }
}