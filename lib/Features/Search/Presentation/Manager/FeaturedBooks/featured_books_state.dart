part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final BookModel bookModel;

  const FeaturedBooksSuccess({required this.bookModel,});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String failure;

  const FeaturedBooksFailure({required this.failure,});
}

final class FeaturedBooksLoading extends FeaturedBooksState {}
