import 'package:flutter/material.dart';

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
