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
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimayColor),
      home: const SplashView(),
    );
  }
}
