import 'package:booklyapp/Core/utils/Api_Service.dart';
import 'package:booklyapp/Core/utils/App_Router.dart';
import 'package:booklyapp/Core/utils/ServiceLocator.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/NewestBooks/newest_books_cubit.dart';
import 'package:booklyapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepo>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepo>(),
          )..fetchNews(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimayColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
