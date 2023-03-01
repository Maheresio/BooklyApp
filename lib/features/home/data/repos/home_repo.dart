import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/book_model/book_model.dart';

typedef Type = Future<Either<Failure, List<BookModel>>>;

abstract class HomeRepo {
  Type getFeaturedBooks();
  Type getNewestBooks();
  Type getSimilarBooks();
}
