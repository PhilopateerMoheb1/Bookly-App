import 'package:booklyapp/Core/utils/ServiceLocator.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Data/repos/home_repos.dart';
import 'package:booklyapp/Features/Search/Presentation/Manager/SimilarBooks/similar_books_cubit.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key,
    required this.bookModel,
    required this.index,
  });

  final BookModel bookModel;
  final int index;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilar(
        widget.bookModel.items![widget.index].volumeInfo!.categories![0],
        widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(
        bookModel: widget.bookModel,
        index: widget.index,
      ),
    );
  }
}
