import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portfolio/core/assets/vectors/app_vectors.dart';

import '../../../../core/helper/themed_svg.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typo_theme.dart';
import '../widgets/button_social_widget.dart';
import '../widgets/title_component_widget.dart';

class ContactComponent extends StatelessWidget {
  const ContactComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightSecond
          : AppColors.backgroundDarkSecond,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Center(
              child: titleComponentWidget(
                context,
                text: "Get in touch",
                appColors: isLightTheme
                    ? AppColors.greyLight
                    : AppColors.greyDark,
              ),
            ),
            SizedBox(height: 20),
            TypoTheme.regular20(
              context,
              textAlign: TextAlign.center,
              text:
                  'What’s next? Feel free to reach out to me if you\'re looking '
                  'for a developer, have a query, or simply want to connect.',
            ),
            SizedBox(height: 20),
            contactWidget(
              context,
              contact: "nghia181032@gmail.com",
              svgIcon: AppVectors.email,
            ),
            contactWidget(
              context,
              contact: "+84 339941057",
              svgIcon: AppVectors.phone,
            ),
            SizedBox(height: 40 ),
            TypoTheme.regular16(
              context,
              text: "You may also find me on these platforms!",
            ),
            Center(child: _socialMediaWidget(context)),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

Widget contactWidget(
  BuildContext context, {
  required String svgIcon,
  required String contact,
}) {
  return Center(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        themedSvg(context, svgIcon, size: 32),
        SizedBox(width: 10),
        TypoTheme.semiBold36(context, text: contact),
        SizedBox(width: 10),
        InkWell(
          onTap: () {
            Clipboard.setData(ClipboardData(text: contact));
            Fluttertoast.showToast(
              msg: "Copied!",
              backgroundColor: AppColors.greyDark,
              webBgColor: "#606060",
            );
          },
          child: themedSvg(context, svgIcon, size: 32),
        ),
      ],
    ),
  );
}

Widget _socialMediaWidget(BuildContext context) {
  return Row(
    spacing: 1,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      buttonSocialWidget(
        context,
        themedSvg(context, AppVectors.github, size: 30),
        'https://github.com/nghiaMeo',
      ),
      SizedBox(width: 5),
      buttonSocialWidget(
        context,
        themedSvg(context, AppVectors.twitter, size: 30),
        '',
      ),
      SizedBox(width: 10),
      buttonSocialWidget(
        context,
        themedSvg(context, AppVectors.linkedin, size: 20),
        'https://www.linkedin.com/in/nghianguyen2001/',
      ),
    ],
  );
}
