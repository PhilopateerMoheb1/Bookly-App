import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookDetailsCustomAppBar.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookRating.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookModel,
    required this.index,
  });

  final BookModel bookModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const BookDetailsCustomAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            bookModel: bookModel,
            index: index,
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        Text(
          bookModel.items![index].volumeInfo!.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          bookModel.items![index].volumeInfo?.authors?[0]!,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.items![index].volumeInfo?.averageRating ?? 0,
          reviews: bookModel.items![index].volumeInfo?.averageRating ?? 0,
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
