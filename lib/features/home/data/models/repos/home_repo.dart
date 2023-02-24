import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';

typedef Type = Future<Either<Failure, List<BookModel>>>;

abstract class HomeRepo {
  Type getFeaturedBooks();
  Type getBestSellerBooks();
}
