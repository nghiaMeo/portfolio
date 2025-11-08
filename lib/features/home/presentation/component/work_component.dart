import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/images/app_images.dart';
import 'package:portfolio/features/home/presentation/widgets/product_card_widget.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typo_theme.dart';
import '../widgets/title_component_widget.dart';

class WorkComponent extends StatelessWidget {
  const WorkComponent({super.key});

  @override
  Widget build(BuildContext context) {
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
                text: "Work",
                appColors: isLightTheme
                    ? AppColors.greyLight
                    : AppColors.greyDark,
              ),
            ),
            SizedBox(height: 10),
            TypoTheme.regular20(
              context,
              text: 'Some of the noteworthy projects I have built:',
            ),
            ProductCardWidget(
              imageUrl: AppImages.avatar,
              title: "Just Do It",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  " Maecenas nec urna ac tellus volutpat viverra. "
                  "Vestibulum ante ipsum primis in faucibus orci "
                  "luctus et ultrices posuere cubilia curae.",
              techs: ["Java", "Spring Boot", "MySql", "Docker", "VMWare"],
            ),
          ],
        ),
      ),
    );
  }
}
