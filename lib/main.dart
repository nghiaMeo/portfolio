import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/core/localization/app_localzations.dart';
import 'package:portfolio/core/localization/language_notifier.dart';
import 'package:provider/provider.dart';
import 'core/theme/theme_notifier.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/page/home_page.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
        ChangeNotifierProvider(create: (_) => LanguageNotifier()),
      ],
      child: MyApp(),
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
    return Consumer2<ThemeNotifier, LanguageNotifier>(
      builder: (context, themeNotifier, languageNotifier, _) {
        final isDark = themeNotifier.themeMode == ThemeMode.dark;

        return AnimatedTheme(
          duration: const Duration(microseconds: 100),
          curve: Curves.easeInOut,
          data: isDark ? ThemeData.dark() : ThemeData.light(),
          child: MaterialApp(
            key: ValueKey(languageNotifier.locale),
            locale: languageNotifier.locale,
            supportedLocales: const [Locale('en'), Locale('vi')],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            title: "Portfolio",
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: themeNotifier.themeMode,
            home: HomePage(),
          ),
        );
      },
    );
  }
}
