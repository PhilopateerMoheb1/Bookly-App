part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final BookModel bookModel;

  const SimilarBooksSuccess({required this.bookModel});
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMsg;

  const SimilarBooksFailure({required this.errMsg});
}
