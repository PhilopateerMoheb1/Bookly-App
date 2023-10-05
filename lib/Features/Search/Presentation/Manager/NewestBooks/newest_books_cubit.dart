import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksLoading());
  final HomeRepo homeRepo;

  Future<void> fetchNews() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewest();
    result.fold(
      (failure) => emit(
        NewestBooksFailure(
          errMsg: failure.toString(),
        ),
      ),
      (books) => emit(
        NewestBooksSuccess(
          bookModel: books,
        ),
      ),
    );
  }
}
