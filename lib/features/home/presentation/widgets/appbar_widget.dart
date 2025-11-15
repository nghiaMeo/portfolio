import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/core/helper/themed_svg.dart';

import 'package:provider/provider.dart';
import '../../../../core/theme/theme_notifier.dart';
import '../../../../core/theme/typo_theme.dart';
import 'button_widget.dart';
import 'item_title_widget.dart';

Widget appbarWidget(BuildContext context) {
  final themeNotifier = Provider.of<ThemeNotifier>(context);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        itemTitleWidget(context, TypoTheme.medium16(context, text: "About")),
        itemTitleWidget(context, TypoTheme.medium16(context, text: "Work")),
        itemTitleWidget(
          context,
          TypoTheme.medium16(context, text: "Testimonials"),
        ),
        itemTitleWidget(context, TypoTheme.medium16(context, text: "Contact")),
        itemTitleWidget(
          context,
          Consumer<ThemeNotifier>(
            builder: (context, themeNotifier, _) {
              return GestureDetector(
                onTap: () => themeNotifier.toggleTheme(),
                child: Container(
                  child: themeNotifier.isDarkMode
                      ? themedSvg(context, AppVectors.light)
                      : themedSvg(context, AppVectors.night),
                ),
              );
            },
          ),
        ),
        itemTitleWidget(context, buttonDownload(context, "Download CV")),
        // listTitleWidget(context, ),
      ],
    ),
  );
}
