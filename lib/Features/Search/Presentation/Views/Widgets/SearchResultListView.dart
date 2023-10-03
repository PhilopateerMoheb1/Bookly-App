import 'package:flutter/material.dart';

import '../../../../Splash/Presentation/Views/Widgets/BestSellerListViewItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}
