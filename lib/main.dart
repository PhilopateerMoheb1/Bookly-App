import 'package:booklyapp/Features/Splash/Presentation/Views/Home_View.dart';
import 'package:booklyapp/constant.dart';
import 'package:flutter/material.dart';

import 'Features/Splash/Presentation/Views/Splash_View.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.id,
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimayColor),
    );
  }
}
