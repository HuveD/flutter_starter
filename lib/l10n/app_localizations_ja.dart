import 'app_localizations.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get app_name => 'flutter_starter';

  @override
  String get menu_tomorrow_me => '明日の私へ';

  @override
  String get menu_memo => 'メモ帳';

  @override
  String get preparing_feature => '準備中の機能です。';

  @override
  String get tomorrow_me_tip => '明日の私にメッセージを送ってみてください。\n明日のこの時間に通知でメッセージを受け取ることができます。';

  @override
  String get notepad_tip => '覚えておくべき内容をメモしてみてください。\nメモ帳に書いた言葉は通知で来ません。';

  @override
  String get menu_note_date_format => 'd日 - EEEE';

  @override
  String get notification_channel_general => '一般';

  @override
  String get notification_channel_scheduled_message => '予約メッセージ';

  @override
  String get push_title_from_yesterday => '✉️ 昨日の私から';

  @override
  String get push_text_from_yesterday => '新しいメッセージがあります。';

  @override
  String get opensource_license => 'オープンソースライセンス';
}
