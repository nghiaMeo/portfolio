import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
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
    final techList = [
      {'svg': AppVectors.docker, 'name': 'Docker'},
      {'svg': AppVectors.java, 'name': 'Java'},
      {'svg': AppVectors.springBoot, 'name': 'Spring Boot'},
      {'svg': AppVectors.python, 'name': 'Python'},
      {'svg': AppVectors.git, 'name': 'Git'},
      {'svg': AppVectors.flutter, 'name': 'Flutter'},
      {'svg': AppVectors.gitlab, 'name': 'Gitlab'},
      {'svg': AppVectors.ubuntu, 'name': 'Ubuntu'},
      {'svg': AppVectors.postgreSql, 'name': 'PostgreSQL'},
      {'svg': AppVectors.mySql, 'name': 'MySQL'},
    ];
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightPrimary
          : AppColors.backgroundDarkPrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            TypoTheme.regular20(
              context,
              text: 'The skills, tools and technologies I am really good at:',
            ),
            SizedBox(height: 80),
            _gridSkillsWidget(context, techList),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

Widget _gridSkillsWidget(BuildContext context, List techList) {
  return Center(
    child: Wrap(
      alignment: WrapAlignment.center,
      spacing: 100,
      runSpacing: 100,
      children: techList.map((tech) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(tech['svg']!, width: 64, height: 64),
            const SizedBox(height: 8),
            TypoTheme.regular18(context, text: tech['name']),
          ],
        );
      }).toList(),
    ),
  );
}
