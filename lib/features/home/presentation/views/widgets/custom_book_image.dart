import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../data/models/book_model/book_model.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 2.6 / 3.8,
          child: CachedNetworkImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) =>const  Center(
              child: Icon(
                Icons.error_outline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
