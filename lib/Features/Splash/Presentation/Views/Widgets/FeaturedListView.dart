import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/FeaturedListViewItem.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .35,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const FeaturedListViewItem();
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
