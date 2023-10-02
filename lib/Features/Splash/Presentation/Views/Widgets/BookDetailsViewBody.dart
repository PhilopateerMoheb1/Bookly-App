import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/BookDetailsCustomAppBar.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const BookDetailsCustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
