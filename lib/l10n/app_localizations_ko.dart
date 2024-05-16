import 'app_localizations.dart';

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get app_name => 'flutter_starter';

  @override
  String get menu_tomorrow_me => '내일의 나에게';

  @override
  String get menu_memo => '메모장';

  @override
  String get preparing_feature => '준비 중인 기능입니다.';

  @override
  String get tomorrow_me_tip => '내일의 나에게 메시지를 보내 보세요.\n내일 이 시간에 알림으로 메시지를 받을 수 있습니다.';

  @override
  String get notepad_tip => '기억해야 할 내용을 메모해 보세요.\n메모장에 적은 말은 알림으로 오지 않아요.';

  @override
  String get menu_note_date_format => 'd일 - EEEE';

  @override
  String get notification_channel_general => '일반';

  @override
  String get notification_channel_scheduled_message => '예약 메세지';

  @override
  String get push_title_from_yesterday => '✉️ 어제의 나로부터';

  @override
  String get push_text_from_yesterday => '새로운 메시지가 있습니다.';

  @override
  String get opensource_license => '오픈소스 라이선스';
}
