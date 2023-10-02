import 'package:booklyapp/Features/Splash/Presentation/Views/Home_View.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/HomeView';
  static const kBookDetailsViewRoute = '/BookDetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHo,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kb,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    ],
  );
}
