import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/localization/localizations_delegate.dart';
import 'package:portfolio/core/localization/localization_keys.dart';

class AppLocalizations {
  final Locale locale;
  Map<String, String> _localizationStrings = {};

  AppLocalizations(this.locale);

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!;

  Future<bool> load() async {
    try {
      String jsonString = await rootBundle.loadString(
        'lib/l10n/app_${locale.languageCode}.arb',
      );
      
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      
      _localizationStrings = {};
      jsonMap.forEach((key, value) {
        if (!key.startsWith('@') && value is String) {
          _localizationStrings[key] = value;
        }
      });
      
      return true;
    } catch (e) {
      // If loading fails, return false but don't crash
      print('Error loading translations: $e');
      return false;
    }
  }

  String translate(String key) {
    if (_localizationStrings.isEmpty) {
      return key;
    }
    return _localizationStrings[key] ?? key;
  }


  // Navigation
  String get about => translate(L10nKeys.about);
  String get work => translate(L10nKeys.work);
  String get testimonials => translate(L10nKeys.testimonials);
  String get contact => translate(L10nKeys.contact);
  String get downloadCv => translate(L10nKeys.downloadCv);
  String get appName => translate(L10nKeys.appName);
  
  // Summary/Overview
  String get hiImNghia => translate(L10nKeys.hiImNghia);
  String get summaryDescription => translate(L10nKeys.summaryDescription);
  String get location => translate(L10nKeys.location);
  String get availableForProjects => translate(L10nKeys.availableForProjects);
  
  // About
  String get aboutMe => translate(L10nKeys.aboutMe);
  String get curiousAboutMe => translate(L10nKeys.curiousAboutMe);
  String get aboutDescription => translate(L10nKeys.aboutDescription);
  
  // Skills
  String get skills => translate(L10nKeys.skills);
  String get skillsDescription => translate(L10nKeys.skillsDescription);
  
  // Experience
  String get experience => translate(L10nKeys.experience);
  String get experienceDescription => translate(L10nKeys.experienceDescription);
  
  // Work
  String get workDescription => translate(L10nKeys.workDescription);
  
  // Contact
  String get getInTouch => translate(L10nKeys.getInTouch);
  String get contactDescription => translate(L10nKeys.contactDescription);
  String get findMeOnPlatforms => translate(L10nKeys.findMeOnPlatforms);
  String get copied => translate(L10nKeys.copied);
  
  // Footer
  String get footerText => translate(L10nKeys.footerText);
}
