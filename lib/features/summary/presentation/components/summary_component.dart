import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';
import 'package:portfolio/features/summary/presentation/widgets/button_social_widget.dart';

import '../../../../core/assets/images/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typo_theme.dart';

class SummaryComponent extends StatelessWidget {
  const SummaryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(fit: FlexFit.tight, child: _descriptionWidget(context)),
          Flexible(fit: FlexFit.loose, child: _avatarWidget(context)),
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
      _available(context),
      SizedBox(height: 50),
      _socialMedia(context),
    ],
  );
}

Widget _avatarWidget(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: AppColors.greyLight,
          blurRadius: 12,
          offset: Offset(0, 6),
        ),
      ],
      borderRadius: BorderRadius.circular(0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: Image.asset(AppImages.avatar, width: 280, height: 320),
    ),
  );
}

Widget _livingWidget(BuildContext context) {
  return Row(
    children: [
      SvgPicture.asset(AppVectors.location),
      SizedBox(width: 10),
      TypoTheme.regular16(context, text: "Ho Chi Minh City, Vietnam"),
    ],
  );
}

Widget _available(BuildContext context) {
  return Row(
    children: [
      SvgPicture.asset(AppVectors.dot),
      SizedBox(width: 10),
      TypoTheme.regular16(context, text: "Available for new projects"),
    ],
  );
}

Widget _socialMedia(BuildContext context) {
  return Row(
    spacing: 1,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      buttonSocialWidget(
        context,
        SvgPicture.asset(AppVectors.github),
        'https://github.com/nghiaMeo',
      ),
      SizedBox(width: 5),
      buttonSocialWidget(context, SvgPicture.asset(AppVectors.twitter), ''),
      SizedBox(width: 10),
      buttonSocialWidget(
        context,
        SvgPicture.asset(AppVectors.linkedin),
        'https://www.linkedin.com/in/nghianguyen2001/',
      ),
    ],
  );
}
