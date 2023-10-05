import 'package:booklyapp/Features/Data/Models/book_model/BookModelIndex.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/SimilarBooks/similar_books_cubit.dart';
import 'package:booklyapp/Features/Search/Presentation/Views/Search_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Book_Details_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Home_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'ServiceLocator.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/HomeView';
  static const kBookDetailsViewRoute = '/BookDetails';
  static const kSearchViewRoute = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (BuildContext context, GoRouterState state) {
          BookModelIndex bookModelIndex = state.extra as BookModelIndex;
          return BlocProvider(
            create: (context) => SimilarBooksCubit(
              getIt.get<HomeRepo>(),
            ),
            child: BookDetailsView(
              bookModel: bookModelIndex.bookModel,
              index: bookModelIndex.index,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
