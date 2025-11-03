import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/typo_theme.dart';

class ExperienceCardWidget extends StatelessWidget {
  final String companyLogo;
  final String companyName;
  final String position;
  final String time;
  final List<String> descriptions;

  const ExperienceCardWidget({
    super.key,
    required this.companyLogo,
    required this.companyName,
    required this.position,
    required this.time,
    required this.descriptions,
  });

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return IntrinsicWidth(
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isLightTheme
                ? AppColors.backgroundLightPrimary
                : AppColors.greyDark100,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: isLightTheme
                    ? Colors.black.withOpacity(0.05)
                    : Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(companyLogo, fit: BoxFit.contain),
              SizedBox(width: 100),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TypoTheme.semiBold20(
                      context,
                      text: '$companyName - $position',
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: descriptions
                          .map(
                            (desc) => Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TypoTheme.regular18(context, text: "•"),
                                  Expanded(
                                    child: TypoTheme.regular16(
                                      context,
                                      text: desc,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              TypoTheme.regular16(context, text: time),
            ],
          ),
        ),
      ),
    );
  }
}
