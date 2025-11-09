import 'package:flutter/material.dart';

class SvgTheme extends ThemeExtension<SvgTheme> {
  final Color? color;
  final double? size;

  const SvgTheme({this.color, this.size});

  @override
  SvgTheme copyWith({Color? color, double? size}) {
    return SvgTheme(color: color ?? this.color, size: size ?? this.size);
  }

  @override
  SvgTheme lerp(ThemeExtension<SvgTheme>? other, double t) {
    if (other is! SvgTheme) return this;
    return SvgTheme(
      color: Color.lerp(color, other.color, t),
      size: size ?? other.size,
    );
  }
}
