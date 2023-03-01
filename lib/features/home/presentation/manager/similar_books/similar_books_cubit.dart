import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.getSimilarBooks();

    result.fold((failure) => emit(SimilarBooksFailure(failure.errorMsg)),
        (books) => emit(SimilarBooksSuccess(books)));
  }
}
