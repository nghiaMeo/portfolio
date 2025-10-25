import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(primary: Colors.white, secondary: Colors.red),
  scaffoldBackgroundColor: Colors.white,
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(primary: Colors.black, secondary: Colors.white),
  scaffoldBackgroundColor: Colors.black,
);
