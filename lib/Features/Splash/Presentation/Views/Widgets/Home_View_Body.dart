import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/FeaturedListView.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage(AssetData.test1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
