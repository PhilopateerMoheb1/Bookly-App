import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/SimilarBooks/similar_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommedationListView extends StatelessWidget {
  const RecommedationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.bookModel.items!.length,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  bookModel: state.bookModel,
                  index: index,
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomError(
            errMsg: state.errMsg,
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
