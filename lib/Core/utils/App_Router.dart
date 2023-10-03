import 'package:booklyapp/Features/Search/Presentation/Views/Search_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Book_Details_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Home_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          return const BookDetailsView();
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
