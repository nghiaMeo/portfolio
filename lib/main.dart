import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_theme.dart';
import 'package:portfolio/features/home/presentation/page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      theme: AppTheme.light.themeData,
      darkTheme: AppTheme.dark.themeData,
      home: HomePage(),
    );
  }
}
