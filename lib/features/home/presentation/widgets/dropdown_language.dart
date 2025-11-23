import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/images/app_images.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/core/helper/themed_svg.dart';
import 'package:portfolio/core/localization/language_notifier.dart';
import 'package:provider/provider.dart';

Widget dropdownLanguage(BuildContext context) {
  final languageNotifier = Provider.of<LanguageNotifier>(context);
  
  // Get current language flag
  String currentFlag = languageNotifier.isEnglish ? AppImages.us : AppImages.vn;
  
  return PopupMenuButton<String>(
    onSelected: (value) {
      if (value == 'en') {
        languageNotifier.setLanguage('en');
      } else if (value == 'vi') {
        languageNotifier.setLanguage('vi');
      }
    },
    child: Row(
      children: [
        Image.asset(currentFlag, width: 30),
        themedSvg(context, AppVectors.dropdown, size: 5),
      ],
    ),
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 'vi',
        child: Image.asset(AppImages.vn, width: 30),
      ),
      PopupMenuItem(
        value: 'en',
        child: Image.asset(AppImages.us, width: 30),
      ),
    ],
  );
}
