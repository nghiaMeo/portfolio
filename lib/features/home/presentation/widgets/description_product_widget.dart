import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/helper/themed_svg.dart';

import '../../../../core/assets/vectors/app_vectors.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typo_theme.dart';

class DescriptionProductWidget extends StatelessWidget {
  final String title;
  final String description;
  final List<String> techs;
  final BorderRadius borderRadius;

  const DescriptionProductWidget({
    super.key,
    required this.title,
    required this.description,
    required this.techs,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: isLightTheme
            ? AppColors.backgroundLightPrimary
            : AppColors.greyDark100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TypoTheme.semiBold20(context, text: title),
          const SizedBox(height: 8),
          TypoTheme.regular16(context, text: description),
          const SizedBox(height: 12),
          // Tech tags
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: techs
                .map(
                  (tech) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? AppColors.greyLight
                          : AppColors.greyDark,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TypoTheme.medium14(context, text: tech),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 12),
          // Open link button
          InkWell(onTap: () {}, child: themedSvg(context, AppVectors.link)),
        ],
      ),
    );
  }
}
