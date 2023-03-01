import 'package:bookly_app/core/helpers/url_launch.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            text: 'Free',
            style: Styles.textStyle18
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: ()=>customUrlLauncher(context, bookModel.volumeInfo.previewLink),
            backgroundColor: AppColors.kbuttonColor,
            style: Styles.textStyle18.copyWith(
                fontFamily: kGilroy,
                fontWeight: FontWeight.w400,
                color: Colors.white),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
