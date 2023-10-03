import 'package:booklyapp/Core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomBuyButton extends StatelessWidget {
  const CustomBuyButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.borderRadius,
  });

  final Color backgroundColor;
  final String text;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
