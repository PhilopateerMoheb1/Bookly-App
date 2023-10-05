import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({
    super.key,
    required this.errMsg,
  });
  final String errMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errMsg),
    );
  }
}
