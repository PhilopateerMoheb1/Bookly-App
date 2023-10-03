import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookDetailsSection.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/SimilarBooksSection.dart';
import 'package:flutter/material.dart';

import 'BooksAction.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BookDetailsSection(),
                SizedBox(
                  height: 25,
                ),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SimilarBooksSection(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
