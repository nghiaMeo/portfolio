import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/theme_notifier.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/page/home_page.dart';
import 'l10n/l10n.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final isDark = themeNotifier.themeMode == ThemeMode.dark;

    return AnimatedTheme(
      duration: const Duration(microseconds: 100),
      curve: Curves.easeInOut,
      data: isDark ? ThemeData.dark() : ThemeData.light(),
      child: MaterialApp(
        locale: Locale('en'),
        supportedLocales: L10n.all,
        debugShowCheckedModeBanner: false,
        title: "Portfolio",
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: themeNotifier.themeMode,
        home: HomePage(),
      ),
    );
  }
}
