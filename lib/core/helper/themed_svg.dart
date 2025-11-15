import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as svg;
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/svg_theme.dart';

Widget themedSvg(
  BuildContext context,
  String assetPath, {
  double? size,
  Color? color,
}) {
  final svgTheme = Theme.of(context).extension<SvgTheme>()!;
  return svg.SvgPicture.asset(
    assetPath,
    width: size ?? svgTheme.size,
    height: size ?? svgTheme.size,
    colorFilter: ColorFilter.mode(
      color ??
          AppColors.textContentDarkTheme ??
          AppColors.textContentLightTheme,
      BlendMode.srcIn,
    ),
  );
}
