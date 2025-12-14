import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/theme/typo_theme.dart';

Widget titleComponentWidget(
  BuildContext context, {
  required String text,
  required Color appColors,
}) {
  return Container(
    width: 130,
    height: 30,
    decoration: BoxDecoration(
      color: appColors,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Center(
      child: TypoTheme.medium16(context, text: text),
    ),
  );
}