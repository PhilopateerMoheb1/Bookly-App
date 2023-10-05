import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksLoading());

  Future<void> fetchSimilar(String subject, int index) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilar("Science ");
    result.fold(
      (failure) => emit(
        SimilarBooksFailure(
          errMsg: failure.toString(),
        ),
      ),
      (books) => emit(
        SimilarBooksSuccess(bookModel: books, index: index),
      ),
    );
  }
}
