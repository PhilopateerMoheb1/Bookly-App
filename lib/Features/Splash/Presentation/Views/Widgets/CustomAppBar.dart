import 'package:booklyapp/Core/utils/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 35,
        right: 20,
        left: 20,
        bottom: 15,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              context.go(AppRouter.kSearchViewRoute);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
