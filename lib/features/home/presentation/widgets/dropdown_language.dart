import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/images/app_images.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/core/helper/themed_svg.dart';

Widget dropdownLanguage(BuildContext context) {
  String selectedLanguage = 'vi';
  return PopupMenuButton<String>(
    onSelected: (value) {
      selectedLanguage = value;
    },
    child: Row(
      children: [
        Image.asset(AppImages.us, width: 30),
        themedSvg(context, AppVectors.dropdown, size: 5),
      ],
    ),
    itemBuilder: (context) => [
      PopupMenuItem(value: 'vi', child: Image.asset(AppImages.vn, width: 30)),
      PopupMenuItem(value: 'us', child: Image.asset(AppImages.us, width: 30)),
    ],
  );
}
