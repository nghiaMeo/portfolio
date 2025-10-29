import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';

import 'package:provider/provider.dart';
import '../../../../core/theme/theme_notifier.dart';
import '../../../../core/theme/typo_theme.dart';
import '../widgets/button_widget.dart';
import '../widgets/item_title_widget.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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
          itemTitleWidget(
            context,
            TypoTheme.medium16(context, text: "Contact"),
          ),
          itemTitleWidget(
            context,
            Consumer<ThemeNotifier>(
              builder: (context, themeNotifier, _) {
                return GestureDetector(
                  onTap: () => themeNotifier.toggleTheme(),
                  child: Container(
                    child: themeNotifier.isDarkMode
                        ? SvgPicture.asset(AppVectors.light)
                        : SvgPicture.asset(AppVectors.night),
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
}
