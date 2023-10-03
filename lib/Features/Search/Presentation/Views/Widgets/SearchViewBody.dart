import 'package:booklyapp/Features/Search/Presentation/Views/Widgets/SearchResultListView.dart';
import 'package:booklyapp/Features/Search/Presentation/Views/Widgets/SearchTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/Styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        SearchTextField(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Search Results:",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
