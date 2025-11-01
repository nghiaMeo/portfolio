import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundLightPrimary,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    colorScheme: const ColorScheme.light(
      surface: AppColors.backgroundLightPrimary,
      onSurface: AppColors.textContentLightTheme,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.textContentLightTheme),
      titleLarge: TextStyle(color: AppColors.textHeaderLightTheme),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.grey.shade50,
        disabledBackgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        textStyle: GoogleFonts.inter(
          fontSize: 16,
          color: Colors.grey.shade50,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDarkPrimary,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDarkPrimary,
    colorScheme: const ColorScheme.dark(
      surface: AppColors.backgroundDarkSecond,
      onSurface: AppColors.textContentDarkTheme,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.textContentDarkTheme),
      titleLarge: TextStyle(color: AppColors.textHeaderDarkTheme),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade50,
        foregroundColor: Colors.grey.shade900,
        disabledBackgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        textStyle: GoogleFonts.inter(
          fontSize: 16,
          color: Colors.grey.shade900,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
