import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as svg;
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
      color ?? svgTheme.color ?? Colors.black,
      BlendMode.srcIn,
    ),
  );
}
