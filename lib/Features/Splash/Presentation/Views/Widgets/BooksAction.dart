import 'package:booklyapp/Core/functions/launch_url.dart';
import 'package:booklyapp/Features/Data/Models/book_model/book_model.dart';
import 'package:booklyapp/Features/Splash/Presentation/Views/Widgets/CustomBuyButton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.bookModel,
    required this.index,
  });

  final BookModel bookModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: CustomBuyButton(
              text: "Free",
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
              onPressed: () async {
                launchCustomUrl(
                    context, bookModel.items![index].volumeInfo!.previewLink!);
              },
              text: getText(),
              textColor: Colors.white,
              backgroundColor: const Color(0xffef8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText() {
    if (bookModel.items![index].volumeInfo?.previewLink == null) {
      return "Not availble";
    } else {
      return "Preview";
    }
  }
}
