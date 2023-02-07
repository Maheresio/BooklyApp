import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

 Container(
      width: 80,
      height: 110,
      clipBehavior: Clip.hardEdge,
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
    ),


        Column(
          children:const [

          ],
        )
      ],
    ) ;
  }
}