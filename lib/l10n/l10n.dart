import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L10n {
  static GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  static AppLocalizations get tr {
    return AppLocalizations.of(_navigatorKey.currentContext!)!;
  }

  static List<LocalizationsDelegate<dynamic>> localizationsDelegates() =>
      AppLocalizations.localizationsDelegates;

  static List<Locale> supportedLocales() => AppLocalizations.supportedLocales;

  static updateNavigatorKey(GlobalKey<NavigatorState> key) {
    _navigatorKey = key;
  }
}
