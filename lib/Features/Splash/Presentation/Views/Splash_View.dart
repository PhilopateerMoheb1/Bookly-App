import 'package:booklyapp/Features/Splash/Presentation/Views/Home_View.dart';
import 'package:booklyapp/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Widgets/Splash_View_Body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const id = "SplashView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
