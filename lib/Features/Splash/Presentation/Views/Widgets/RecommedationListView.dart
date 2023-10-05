import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class RecommedationListView extends StatelessWidget {
  const RecommedationListView({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CustomBookImage(
            bookModel: bookModel,
            index: index,
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
