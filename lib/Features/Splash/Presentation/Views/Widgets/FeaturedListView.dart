import 'package:booklyapp/Core/utils/App_Router.dart';
import 'package:booklyapp/Features/Data/Models/book_model/BookModelIndex.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .35,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.bookModel.items!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.go(
                      AppRouter.kBookDetailsViewRoute,
                      extra: BookModelIndex(
                        bookModel: state.bookModel,
                        index: index,
                      ),
                    );
                  },
                  child: CustomBookImage(
                    bookModel: state.bookModel,
                    index: index,
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(errMsg: state.failure);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
