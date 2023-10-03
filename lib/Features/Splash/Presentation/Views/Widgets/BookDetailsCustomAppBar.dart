import 'package:booklyapp/Core/utils/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsCustomAppBar extends StatelessWidget {
  const BookDetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.push(AppRouter.kHomeViewRoute);
            },
            icon: const Icon(Icons.close),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
    );
  }
}
