import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBuyButton.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomBuyButton(
              text: "19.99€",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: CustomBuyButton(
              text: "Free preview",
              textColor: Colors.white,
              backgroundColor: Color(0xffef8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
