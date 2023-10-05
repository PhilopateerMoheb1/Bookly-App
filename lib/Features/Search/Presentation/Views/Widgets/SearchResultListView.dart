import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../Splash/Presentation/Views/Widgets/BestSellerListViewItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellerListViewItem(
          bookModel: BookModel(),
          index: 0,
        );
      },
    );
  }
}
