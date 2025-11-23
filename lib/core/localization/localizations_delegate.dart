import 'package:flutter/material.dart';
import 'package:portfolio/core/localization/app_localzations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations>{

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale){
    return ['en','vi'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async{
    final localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) => true;

}