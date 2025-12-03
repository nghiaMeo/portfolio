import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/core/localization/app_localzations.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Chip "Experience"
                Align(
                  alignment: Alignment.center,
                  child: titleComponentWidget(
                    context,
                    text: AppLocalizations.of(context).experience,
                    appColors:
                        isLightTheme ? AppColors.greyLight : AppColors.greyDark,
                  ),
                ),
                const SizedBox(height: 12),
                // Mô tả ngắn
                Align(
                  alignment: Alignment.center,
                  child: TypoTheme.regular20(
                    context,
                    text: AppLocalizations.of(context).experienceDescription,
                  ),
                ),
                const SizedBox(height: 32),
                // Các card kinh nghiệm
                ExperienceCardWidget(
                  companyLogo: AppVectors.logoCompany,
                  companyName: "Upwork",
                  position: "Sr. Frontend Developer",
                  time: "Nov 2021 - Present",
                  descriptions: [
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    "Ut pretium arcu et massa semper, id fringilla leo semper.",
                    "Sed quis justo ac magna.",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ],
                ),
                ExperienceCardWidget(
                  companyLogo: AppVectors.logoCompany,
                  companyName: "Upwork",
                  position: "Team Lead",
                  time: "Jul 2017 - Oct 2021",
                  descriptions: [
                    "Sed quis justo ac magna.",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    "Sed quis justo ac magna.",
                  ],
                ),
                ExperienceCardWidget(
                  companyLogo: AppVectors.logoCompany,
                  companyName: "Upwork",
                  position: "Full Stack Developer",
                  time: "Dec 2015 - May 2017",
                  descriptions: [
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
