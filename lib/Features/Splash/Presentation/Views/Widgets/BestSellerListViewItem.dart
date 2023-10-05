import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookRating.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/App_Router.dart';
import '../../../../../Core/utils/assets.dart';
import '../../../../Data/Models/book_model/BookModelIndex.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookModelIndex,
  });

  final BookModelIndex bookModelIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(
          AppRouter.kBookDetailsViewRoute,
          extra: bookModelIndex,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 29,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: Row(
            children: [
              CustomBookImage(
                  bookModel: bookModelIndex.bookModel,
                  index: bookModelIndex.index),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModelIndex.bookModel.items![bookModelIndex.index]
                            .volumeInfo!.title!,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: "New Roman",
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bookModelIndex.bookModel.items![bookModelIndex.index]
                          .volumeInfo!.authors![0],
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: BookRating(
                            rating: bookModelIndex
                                    .bookModel
                                    .items![bookModelIndex.index]
                                    .volumeInfo!
                                    .averageRating ??
                                0,
                            reviews: bookModelIndex
                                    .bookModel
                                    .items![bookModelIndex.index]
                                    .volumeInfo!
                                    .ratingsCount ??
                                0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
