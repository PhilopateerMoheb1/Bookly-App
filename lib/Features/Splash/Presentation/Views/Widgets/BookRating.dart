import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0XFFffdd4f),
          ),
          const SizedBox(
            width: 6,
          ),
          const Text(
            "4.8",
            style: Styles.textStyle16,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            "(2395)",
            style: Styles.textStyle14.copyWith(
              color: const Color(
                0xff707070,
              ),
            ),
          )
        ],
      ),
    );
  }
}
