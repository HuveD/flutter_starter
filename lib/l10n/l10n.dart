import 'package:flutter_starter/l10n/app_localizations.dart';
import 'package:flutter_starter/l10n/app_localizations_en.dart';
import 'package:flutter_starter/main.dart';

AppLocalizations get l10n {
  final context = FlutterStarterApp.navKey.currentContext;
  final defaultLocalizations = AppLocalizationsEn();
  if (context == null) return defaultLocalizations;
  return AppLocalizations.of(context) ?? defaultLocalizations;
}
