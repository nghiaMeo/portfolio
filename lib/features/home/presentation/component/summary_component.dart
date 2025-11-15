import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/core/helper/themed_svg.dart';
import 'package:portfolio/features/home/presentation/widgets/button_social_widget.dart';

import '../../../../core/assets/images/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typo_theme.dart';

class SummaryComponent extends StatelessWidget {
  const SummaryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(fit: FlexFit.tight, child: _descriptionWidget(context)),
          Flexible(
            fit: FlexFit.loose,
            child: _avatarWidget(
              context,
              fade: isLightTheme
                  ? AppColors.greyLight
                  : AppColors.greyDark,
              midFade: isLightTheme
                  ? AppColors.backgroundLightPrimary
                  : AppColors.backgroundDarkPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _descriptionWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TypoTheme.bold60(context, text: "Hi, I'm Nghia Meo 👋"),
      TypoTheme.regular16(
        context,
        text:
            "I'm a full stack developer (React.js & Node.js) with a focus on "
            "creating (and occasionally designing) exceptional digital "
            "experiences that are fast, accessible, visually appealing, "
            "and responsive. Even though I have been creating web "
            "applications for over 7 years, I still love it as if it was "
            "something new.",
      ),
      SizedBox(height: 50),
      _livingWidget(context),
      SizedBox(height: 5),
      _availableWidget(context),
      SizedBox(height: 50),
      _socialMediaWidget(context),
    ],
  );
}

Widget _avatarWidget(
  BuildContext context, {
  required Color fade,
  required Color midFade,
}) {
  const double w = 280;
  const double h = 320;
  const double radius = 0;

  return SizedBox(
    width: w + 60,
    height: h + 60,
    child: Stack(
      children: [
        // Shadow layer 2 - far (grey)
        Positioned(
          top: 45,
          left: 45,
          child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
              color: fade,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),

        // Shadow layer 1 - near (white)
        Positioned(
          top: 20,
          left: 15,
          child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
              color: midFade,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),

        // Main image
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Image.asset(
                AppImages.avatar,
                width: w,
                height: h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _livingWidget(BuildContext context) {
  return Row(
    children: [
      themedSvg(context, AppVectors.location),
      SizedBox(width: 10),
      TypoTheme.regular16(context, text: "Ho Chi Minh City, Vietnam"),
    ],
  );
}

Widget _availableWidget(BuildContext context) {
  return Row(
    children: [
      SvgPicture.asset(AppVectors.dot),
      SizedBox(width: 10),
      TypoTheme.regular16(context, text: "Available for new projects"),
    ],
  );
}

Widget _socialMediaWidget(BuildContext context) {
  return Row(
    spacing: 1,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      buttonSocialWidget(
        context,
        themedSvg(context, AppVectors.github),
        'https://github.com/nghiaMeo',
      ),
      SizedBox(width: 5),
      buttonSocialWidget(context, themedSvg(context, AppVectors.twitter), ''),
      SizedBox(width: 10),
      buttonSocialWidget(
        context,
        themedSvg(context, AppVectors.linkedin),
        'https://www.linkedin.com/in/nghianguyen2001/',
      ),
    ],
  );
}
