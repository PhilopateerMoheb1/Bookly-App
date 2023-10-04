import 'package:booklyapp/Core/errors/Failure.dart';
import 'package:booklyapp/Core/utils/Api_Service.dart';
import 'package:booklyapp/Features/Data/Models/book_model/access_info.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, BookModel>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              "/volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest");
      BookModel bookModel = BookModel.fromJson(data);
      return right(bookModel);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioException(
            e,
          ),
        );
      } else {
        return Left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
