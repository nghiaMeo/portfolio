import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class ImageProductWidget extends StatelessWidget {
  final String imageUrl;
  final BorderRadius borderRadius;

  const ImageProductWidget({super.key, required this.imageUrl, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: isLightTheme
            ? AppColors.backgroundLightSecond
            : AppColors.greyDark,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imageUrl,
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
