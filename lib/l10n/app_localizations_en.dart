import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'flutter_starter';

  @override
  String get menu_tomorrow_me => 'Tomorrow\'s Me';

  @override
  String get menu_memo => 'Notepad';

  @override
  String get preparing_feature => 'This feature is in development.';

  @override
  String get tomorrow_me_tip => 'Send a message to yourself for tomorrow.\nYou will receive the message as a notification at this same time tomorrow.';

  @override
  String get notepad_tip => 'Write down things you need to remember.\nNotes written in the notepad will not be sent as notifications.';

  @override
  String get menu_note_date_format => 'EEEE, d';

  @override
  String get notification_channel_general => 'General';

  @override
  String get notification_channel_scheduled_message => 'Scheduled Message';

  @override
  String get push_title_from_yesterday => '✉️ From Yesterday\'s Me';

  @override
  String get push_text_from_yesterday => 'You have a new message.';

  @override
  String get opensource_license => 'Open Source License';
}
