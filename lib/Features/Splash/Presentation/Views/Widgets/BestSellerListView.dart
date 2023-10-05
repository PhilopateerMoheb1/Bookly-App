import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/NewestBooks/newest_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BestSellerListViewItem.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.bookModel.items!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerListViewItem(
                  bookModel: state.bookModel,
                  index: index,
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomError(errMsg: state.errMsg);
        } else {
          return const SizedBox(
            width: 20,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
