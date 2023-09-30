import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomListViewBody.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewBody(),
      ],
    );
  }
}
