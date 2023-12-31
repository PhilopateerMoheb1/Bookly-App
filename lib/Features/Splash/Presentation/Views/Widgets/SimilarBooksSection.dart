import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/Styles.dart';
import 'RecommedationListView.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const RecommedationListView(),
      ],
    );
  }
}
