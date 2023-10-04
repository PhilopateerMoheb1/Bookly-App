import 'package:booklyapp/Core/errors/Failure.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {}

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
