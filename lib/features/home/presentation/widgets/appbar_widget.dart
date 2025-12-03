import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/core/helper/themed_svg.dart';
import 'package:portfolio/core/localization/app_localzations.dart';
import 'package:portfolio/features/home/presentation/providers/home_provider.dart';
import 'package:portfolio/features/home/presentation/widgets/dropdown_language.dart';

import 'package:provider/provider.dart';
import '../../../../core/theme/theme_notifier.dart';
import '../../../../core/theme/typo_theme.dart';
import '../page/section_keys.dart';
import 'button_widget.dart';
import 'item_title_widget.dart';

Widget appbarWidget(BuildContext context, {required HomeProvider provider}) {
  final l10n = AppLocalizations.of(context);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        itemTitleWidget(
          context,
          TypoTheme.medium16(context, text: l10n.about),
          onTap: () => provider.scrollTo(SectionKeys.about),
        ),
        itemTitleWidget(
          context,
          TypoTheme.medium16(context, text: l10n.work),
          onTap: () => provider.scrollTo(SectionKeys.work),
        ),
        itemTitleWidget(
          context,
          TypoTheme.medium16(context, text: l10n.testimonials),
          onTap: () => provider.scrollTo(SectionKeys.experience),
        ),
        itemTitleWidget(
          context,
          TypoTheme.medium16(context, text: l10n.contact),
          onTap: () => provider.scrollTo(SectionKeys.contact),
        ),

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
          onTap: () {},
        ),
        dropdownLanguage(context),

        itemTitleWidget(
          context,
          buttonDownload(context, l10n.downloadCv),
          onTap: () {},
        ),
        // listTitleWidget(context, ),
      ],
    ),
  );
}
