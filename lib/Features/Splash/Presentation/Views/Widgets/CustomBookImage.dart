import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomError.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.bookModel,
    required this.index,
  });

  final BookModel bookModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    String? imageLink;

    // if (bookModel.items!.length >= index) {
    //   if (bookModel.items![index].volumeInfo?.imageLinks != null) {
    //     imageLink = bookModel.items![index].volumeInfo?.imageLinks!.thumbnail;
    //   }
    // } else {
    imageLink =
        "https://www.seiu1000.org/sites/main/files/imagecache/hero/main-images/camera_lense_0.jpeg";
    // }

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageLink,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return const Icon(
              Icons.error,
            );
          },
          placeholder: (context, url) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
