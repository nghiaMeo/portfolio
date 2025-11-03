import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/typo_theme.dart';

import '../../../../core/assets/images/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/title_component_widget.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      color: isLightTheme
          ? AppColors.backgroundLightSecond
          : AppColors.backgroundDarkSecond,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Center(
            child: titleComponentWidget(
              context,
              text: "About me",
              appColors: isLightTheme
                  ? AppColors.greyLight
                  : AppColors.greyDark,
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 2, child: _avatarWidget(context)),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TypoTheme.semiBold30(
                      context,
                      text: 'Curious about me? Here you have it:',
                    ),
                    TypoTheme.regular16(
                      context,
                      text:
                          "I'm a passionate, self-proclaimed designer who "
                          "specializes in full stack development (React.js "
                          "& Node.js). I am very enthusiastic about bringing "
                          "the technical and visual aspects of digital "
                          "products to life. User experience, pixel perfect "
                          "design, and writing clear, readable, highly "
                          "performant code matters to me. \n\n"
                          "I began my journey as a web developer in 2015,"
                          " and since then, I've continued to grow and "
                          "evolve as a developer, taking on new challenges "
                          "and learning the latest technologies along the "
                          "way. Now, in my early thirties, 7 years after "
                          "starting my web development journey, I'm building"
                          " cutting-edge web applications using modern "
                          "technologies such as Next.js, TypeScript, Nestjs, "
                          "Tailwindcss, Supabase and much more. \n \n "
                          "I am very much a progressive thinker and enjoy "
                          "working on products end to end, from ideation "
                          "all the way to development.",
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 100),

        ],
      ),
    );
  }
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
      child: Image.asset(AppImages.avatar, width: 400, height: 480),
    ),
  );
}
