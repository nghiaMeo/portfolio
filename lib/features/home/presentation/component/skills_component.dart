import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/typo_theme.dart';
import 'package:portfolio/features/home/presentation/widgets/title_component_widget.dart';

import '../../../../core/theme/app_colors.dart';

class SkillsComponent extends StatefulWidget {
  const SkillsComponent({super.key});

  @override
  State<SkillsComponent> createState() => _SkillsComponentState();
}

class _SkillsComponentState extends State<SkillsComponent> {
  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      height: 400,
      color: isLightTheme
          ? AppColors.backgroundLightPrimary
          : AppColors.backgroundDarkPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Center(
            child: titleComponentWidget(
              context,
              text: "Skills",
              appColors: isLightTheme
                  ? AppColors.greyLight
                  : AppColors.greyDark,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: TypoTheme.regular20(
              context,
              text: 'The skills, tools and technologies I am really good at:',
            ),
          ),
        ],
      ),
    );
  }
}
