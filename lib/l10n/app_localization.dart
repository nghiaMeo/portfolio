import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @work.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get work;

  /// No description provided for @testimonials.
  ///
  /// In en, this message translates to:
  /// **'Testimonials'**
  String get testimonials;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @downloadCv.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get downloadCv;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Jimmy Nguyen'**
  String get appName;

  /// No description provided for @hiImNghia.
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'m Nghia Nguyen(Meow) 👋'**
  String get hiImNghia;

  /// No description provided for @summaryDescription.
  ///
  /// In en, this message translates to:
  /// **'I am a freshly graduated Information Technology engineer with a strong foundation in software development. I have hands-on experience working with Flutter and Java Spring Boot through several projects I have completed. I have also explored AI and IoT during academic research and my graduation thesis.\n\nI am looking for a place where I can fully dedicate myself to learning, growing, and pursuing my passion for technology.'**
  String get summaryDescription;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Ho Chi Minh City, Vietnam'**
  String get location;

  /// No description provided for @availableForProjects.
  ///
  /// In en, this message translates to:
  /// **'Available for new projects'**
  String get availableForProjects;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMe;

  /// No description provided for @curiousAboutMe.
  ///
  /// In en, this message translates to:
  /// **'Curious about me? Here you have it:'**
  String get curiousAboutMe;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'I am an Information Technology engineer specializing in mobile application development and web application development using Flutter and Java Spring Boot. I am highly passionate and enthusiastic about software development, especially the process of building and refining applications.\n\nI began programming in 2019 when I first entered university. Throughout my studies, along with a three-month internship in October 2023, I gained valuable real-world experience and a deeper understanding of the software development process. I continue to improve my skills, enhance my problem-solving abilities, and I am seeking an environment where I can contribute my passion and grow together with the company.\n\nIn 2025, I began my mandatory Military Service, which temporarily paused my career. However, I continue studying and practicing programming every day during this period. After completing my service, I aim to return to the workforce as a developer specializing in software or web application development.\n\nI am a growth-oriented person who enjoys working on products from start to finish—from the initial idea to the final implementation—and always strive to create meaningful and high-quality solutions.'**
  String get aboutDescription;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @skillsDescription.
  ///
  /// In en, this message translates to:
  /// **'My Skills and Technologies:'**
  String get skillsDescription;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @experienceDescription.
  ///
  /// In en, this message translates to:
  /// **'Here is a quick summary of my most recent experiences:'**
  String get experienceDescription;

  /// No description provided for @workDescription.
  ///
  /// In en, this message translates to:
  /// **'Some of the noteworthy projects I have built:'**
  String get workDescription;

  /// No description provided for @getInTouch.
  ///
  /// In en, this message translates to:
  /// **'Get in touch'**
  String get getInTouch;

  /// No description provided for @contactDescription.
  ///
  /// In en, this message translates to:
  /// **'What\'s next? Feel free to reach out to me if you\'re looking for a developer, have a query, or simply want to connect.'**
  String get contactDescription;

  /// No description provided for @findMeOnPlatforms.
  ///
  /// In en, this message translates to:
  /// **'You may also find me on these platforms!'**
  String get findMeOnPlatforms;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied!'**
  String get copied;

  /// No description provided for @footerText.
  ///
  /// In en, this message translates to:
  /// **'2025 | Coded with ❤️️ by Nguyen Huu Nghia'**
  String get footerText;

  /// No description provided for @nameCompany1.
  ///
  /// In en, this message translates to:
  /// **'Di4L'**
  String get nameCompany1;

  /// No description provided for @descriptionCompany1Line1.
  ///
  /// In en, this message translates to:
  /// **'Execute the tasks and modify the user interface (UI) of the company\'s sales application, and commit the code to the company\'s GitLab.'**
  String get descriptionCompany1Line1;

  /// No description provided for @descriptionCompany1Line2.
  ///
  /// In en, this message translates to:
  /// **'Prepare a weekly work progress summary report and a final report at the end of the internship.'**
  String get descriptionCompany1Line2;

  /// No description provided for @position1.
  ///
  /// In en, this message translates to:
  /// **'Flutter Internship'**
  String get position1;

  /// No description provided for @time1.
  ///
  /// In en, this message translates to:
  /// **'Sep 2023 - Nov 2023'**
  String get time1;

  /// No description provided for @nameCompany2.
  ///
  /// In en, this message translates to:
  /// **'VietMap'**
  String get nameCompany2;

  /// No description provided for @descriptionCompany2Line1.
  ///
  /// In en, this message translates to:
  /// **'Implement a contract creation functional flow for company buyer and seller parties, including digital signatures upon contract completion, using Microsoft Power Automate. Implement the order creation function in Bitrix24 CRM and notify relevant company departments.'**
  String get descriptionCompany2Line1;

  /// No description provided for @descriptionCompany2Line2.
  ///
  /// In en, this message translates to:
  /// **'Implement the order creation function in Bitrix24 CRM and notify relevant company departments.'**
  String get descriptionCompany2Line2;

  /// No description provided for @position2.
  ///
  /// In en, this message translates to:
  /// **'RPA Developer Intern'**
  String get position2;

  /// No description provided for @time2.
  ///
  /// In en, this message translates to:
  /// **'Jun 2023 - Aug 2023'**
  String get time2;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
