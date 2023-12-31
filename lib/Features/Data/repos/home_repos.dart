import 'package:booklyapp/Core/errors/Failure.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> fetchNewest();
  Future<Either<Failure, BookModel>> fetchFeaturedBooks();
  Future<Either<Failure, BookModel>> fetchSimilar(String subject);
}
