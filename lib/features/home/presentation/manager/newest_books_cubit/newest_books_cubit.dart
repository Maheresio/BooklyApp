import 'package:bloc/bloc.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.getFeaturedBooks();

    result.fold((failure) => emit(NewestBooksFailure(failure.errorMsg)),
        (books) => emit(NewestBooksSuccess(books)));
  }
}
