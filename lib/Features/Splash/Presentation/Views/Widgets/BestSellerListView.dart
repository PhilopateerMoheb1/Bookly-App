import 'package:booklyapp/Features/Search/Presentation/Manager/NewestBooks/newest_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BestSellerListViewItem.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return const BestSellerListViewItem();
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomError(errMsg: state.errMsg);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
