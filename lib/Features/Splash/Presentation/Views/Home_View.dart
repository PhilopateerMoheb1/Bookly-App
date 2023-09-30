import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/Home_View_Body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const id = "HomeView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
