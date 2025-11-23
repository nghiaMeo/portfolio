import 'package:flutter/material.dart';
import 'package:portfolio/core/localization/app_localzations.dart';
import 'package:portfolio/core/theme/typo_theme.dart';

import '../../../../core/assets/images/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/title_component_widget.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightSecond
          : AppColors.backgroundDarkSecond,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Center(
            child: titleComponentWidget(
              context,
              text: AppLocalizations.of(context).aboutMe,
              appColors: isLightTheme
                  ? AppColors.greyLight
                  : AppColors.greyDark,
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 2, child: _avatarWidget(context)),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TypoTheme.semiBold30(
                      context,
                      text: AppLocalizations.of(context).curiousAboutMe,
                    ),
                    TypoTheme.regular16(
                      context,
                      text: AppLocalizations.of(context).aboutDescription,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 100),

        ],
      ),
    );
  }
}

Widget _avatarWidget(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: Image.asset(AppImages.avatar, width: 500,),
    ),
  );
}
