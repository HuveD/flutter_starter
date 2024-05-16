import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('ko')
  ];

  /// 앱 이름
  ///
  /// In ko, this message translates to:
  /// **'flutter_starter'**
  String get app_name;

  /// 내일 나에게 채팅 전송 메뉴
  ///
  /// In ko, this message translates to:
  /// **'내일의 나에게'**
  String get menu_tomorrow_me;

  /// 메모장 메뉴
  ///
  /// In ko, this message translates to:
  /// **'메모장'**
  String get menu_memo;

  /// 출시 예정 기능 안내
  ///
  /// In ko, this message translates to:
  /// **'준비 중인 기능입니다.'**
  String get preparing_feature;

  /// 내일의 나에게 전달하는 메세지 툴팁 안내
  ///
  /// In ko, this message translates to:
  /// **'내일의 나에게 메시지를 보내 보세요.\n내일 이 시간에 알림으로 메시지를 받을 수 있습니다.'**
  String get tomorrow_me_tip;

  /// 개인 메모장 툴팁 안내
  ///
  /// In ko, this message translates to:
  /// **'기억해야 할 내용을 메모해 보세요.\n메모장에 적은 말은 알림으로 오지 않아요.'**
  String get notepad_tip;

  /// 메인 메뉴 노트 날짜 표시 방식. ex: 02일 - 수요일
  ///
  /// In ko, this message translates to:
  /// **'d일 - EEEE'**
  String get menu_note_date_format;

  /// 안드로이드 알림 채널 - 일반
  ///
  /// In ko, this message translates to:
  /// **'일반'**
  String get notification_channel_general;

  /// 안드로이드 알림 채널 - 예약 메세지
  ///
  /// In ko, this message translates to:
  /// **'예약 메세지'**
  String get notification_channel_scheduled_message;

  /// 어제의 나로부터 푸시 알림 타이틀
  ///
  /// In ko, this message translates to:
  /// **'✉️ 어제의 나로부터'**
  String get push_title_from_yesterday;

  /// 어제의 나로부터 푸시 알림 내용
  ///
  /// In ko, this message translates to:
  /// **'새로운 메시지가 있습니다.'**
  String get push_text_from_yesterday;

  /// 오픈소스 라이선스
  ///
  /// In ko, this message translates to:
  /// **'오픈소스 라이선스'**
  String get opensource_license;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
