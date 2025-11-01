import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/component/summary_component.dart';

import '../../../../core/theme/app_colors.dart';

class OverviewComponent extends StatelessWidget {
  const OverviewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightPrimary
          : AppColors.backgroundDarkPrimary,
      child: bodyOverView(context),
    );
  }
}

Widget bodyOverView(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [SummaryComponent()],
  );
}
