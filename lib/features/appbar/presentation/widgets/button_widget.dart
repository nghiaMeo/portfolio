import 'package:flutter/material.dart';

Widget buttonDownload(BuildContext context, String text) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      shadowColor: Colors.transparent,
      overlayColor: Colors.transparent,
    ),
    child: Text(text),
  );
}
