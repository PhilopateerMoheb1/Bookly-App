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
  final int index;

  const SimilarBooksSuccess({
    required this.bookModel,
    required this.index,
  });
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMsg;

  const SimilarBooksFailure({required this.errMsg});
}
