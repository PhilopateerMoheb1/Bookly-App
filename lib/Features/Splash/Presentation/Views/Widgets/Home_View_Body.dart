import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BestSellerListView.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/FeaturedListView.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
