import '../../../../../constants.dart';
import 'best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(
          start: kHorizontalPadding,
        ),
        child: CustomScrollView(
          physics:const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const FeaturedListView(),
                  SizedBox(
                    height: 42.h,
                  ),
                  Text(
                    'Best Seller',
                    textAlign: TextAlign.start,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                ],
              ),
            ),
            const SliverFillRemaining(
              child: BestSellerListView(),
            ),
          ],
        ));
  }
}
