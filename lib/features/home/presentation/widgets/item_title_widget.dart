import 'package:flutter/material.dart';

Widget itemTitleWidget(BuildContext context, Widget component) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      overlayColor: Colors.transparent,
      shadowColor: Colors.transparent,
    ),
    child: component,
  );
}
