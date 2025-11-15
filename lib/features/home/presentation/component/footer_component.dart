import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/typo_theme.dart';


import '../../../../core/theme/app_colors.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightPrimary
          : AppColors.backgroundDarkPrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypoTheme.regular16(
              context,
              text: "2025 | Coded with ❤️️ by Nguyen Huu Nghia",
            ),
          ],
        ),
      ),
    );
  }
}


