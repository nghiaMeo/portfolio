import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/theme_data.dart';

enum AppTheme { light, dark }

extension AppThemeExtension on AppTheme {
  ThemeData get themeData {
    switch (this) {
      case AppTheme.dark:
        return darkTheme;
      case AppTheme.light:
        return lightTheme;
    }
  }
}
