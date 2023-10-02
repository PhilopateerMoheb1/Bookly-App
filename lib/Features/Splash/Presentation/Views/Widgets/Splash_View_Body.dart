// ignore_for_file: file_names

import 'package:booklyapp/Core/utils/App_Router.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Home_View.dart';
import 'Sliding_Text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    navigateToHome();
    super.initState();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      AppRouter.router.go('/HomeView');
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetData.logo,
          width: 50,
          height: 50,
        ),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
