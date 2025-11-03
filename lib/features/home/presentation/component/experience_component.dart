import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/features/home/presentation/widgets/experience_card_widget.dart';
import 'package:portfolio/features/home/presentation/widgets/title_component_widget.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typo_theme.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightSecond
          : AppColors.backgroundDarkSecond,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          titleComponentWidget(
            context,
            text: 'Experience',
            appColors: isLightTheme ? AppColors.greyLight : AppColors.greyDark,
          ),
          SizedBox(height: 10),
          TypoTheme.regular20(
            context,
            text: 'Here is a quick summary of my most recent experiences:',
          ),
          SizedBox(height: 40),
          ExperienceCardWidget(
            companyLogo: AppVectors.logoCompany,
            companyName: "Nghia",
            position: "Developer",
            time: "25/10/2024 - Present",
            descriptions: [
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              "Ut pretium arcu et massa semper, id fringilla leo semper.",
            ],
          ),
          const SizedBox(height: 20),
          ExperienceCardWidget(
            companyLogo: AppVectors.logoCompany,
            companyName: "Nghia",
            position: "Developer",
            time: "25/10/2024 - Present",
            descriptions: [
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              "Ut pretium arcu et massa semper, id fringilla leo semper.",
            ],
          ),
          const SizedBox(height: 20),
          ExperienceCardWidget(
            companyLogo: AppVectors.logoCompany,
            companyName: "Nghia",
            position: "Developer",
            time: "25/10/2024 - Present",
            descriptions: [
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              "Ut pretium arcu et massa semper, id fringilla leo semper.",
            ],
          ),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
