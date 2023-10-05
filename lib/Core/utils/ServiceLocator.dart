import 'package:booklyapp/Core/utils/Api_Service.dart';
import 'package:booklyapp/Features/Data/repos/HomeRepoImp.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImp(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
