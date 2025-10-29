import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/theme_notifier.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/page/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeNotifier.themeMode,
      home: HomePage(),
    );
  }
}
