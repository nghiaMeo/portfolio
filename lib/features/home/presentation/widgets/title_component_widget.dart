import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/theme/typo_theme.dart';

Widget titleComponentWidget(
  BuildContext context, {
  required String text,
  required Color appColors,
}) {
  return Container(
    height: 28,
    width: 115,
    decoration: BoxDecoration(
      color: appColors,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(child: TypoTheme.medium16(context, text: text)),
  );
}
