import 'package:flutter/material.dart';
import 'package:portfolio/core/assets/images/app_images.dart';
import 'package:portfolio/features/home/presentation/widgets/description_product_widget.dart';
import 'package:portfolio/features/home/presentation/widgets/image_product_widget.dart';

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

            // list product
            productImageLeft(
              context,
              image: AppImages.avatar,
              title: "Just Do It 1",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  " Maecenas nec urna ac tellus volutpat viverra. "
                  "Vestibulum ante ipsum primis in faucibus orci "
                  "luctus et ultrices posuere cubilia curae.",
              techs: ["Java", "Spring Boot", "MySql", "Docker", "VMWare"],
            ),
            productImageRight(
              context,
              image: AppImages.avatar,
              title: "Just Do It 1",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  " Maecenas nec urna ac tellus volutpat viverra. "
                  "Vestibulum ante ipsum primis in faucibus orci "
                  "luctus et ultrices posuere cubilia curae.",
              techs: ["Java", "Spring Boot", "MySql", "Docker", "VMWare"],
            ),
            productImageLeft(
              context,
              image: AppImages.avatar,
              title: "Just Do It 1",
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

Widget productImageLeft(
  BuildContext context, {
  required String image,
  required String title,
  required String description,
  required List<String> techs,
}) {
  return Container(
    //product right
    padding: const EdgeInsets.all(48),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.06),
          blurRadius: 40,
          offset: const Offset(0, 0),
        ),
      ],
    ),
    child: IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image preview
          ImageProductWidget(
            imageUrl: AppImages.avatar,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          Expanded(
            child: DescriptionProductWidget(
              title: title,
              description: description,
              techs: techs,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget productImageRight(
  BuildContext context, {
  required String image,
  required String title,
  required String description,
  required List<String> techs,
}) {
  return Container(
    //product right
    padding: const EdgeInsets.all(48),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.06),
          blurRadius: 40,
          offset: const Offset(0, 0),
        ),
      ],
    ),
    child: IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image preview
          Expanded(
            child: DescriptionProductWidget(
              title: title,
              description: description,
              techs: techs,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          ImageProductWidget(
            imageUrl: AppImages.avatar,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ],
      ),
    ),
  );
}
