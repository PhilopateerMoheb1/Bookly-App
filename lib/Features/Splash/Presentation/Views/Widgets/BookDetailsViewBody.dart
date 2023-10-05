import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookDetailsSection.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/SimilarBooksSection.dart';
import 'package:flutter/material.dart';

import 'BooksAction.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
    required this.index,
  });

  final BookModel bookModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BookDetailsSection(
                  bookModel: bookModel,
                  index: index,
                ),
                const SizedBox(
                  height: 25,
                ),
                BooksAction(
                  bookModel: bookModel,
                  index: index,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                const SimilarBooksSection(),
                const Expanded(
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
