import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_starter/core/notification/notification.if.dart';

import '../../gen/colors.gen.dart';
import 'notification_channels.dart';

class AndroidNotification extends MeNotification {
  final AndroidFlutterLocalNotificationsPlugin? _plugin;

  AndroidNotification()
      : _plugin = FlutterLocalNotificationsPlugin()
            .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

  @override
  Future<void> initialize({bool checkPermission = false}) async {
    _plugin?.initialize(
      const AndroidInitializationSettings('ic_notification'),
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
        // fire when a notification has been tapped on via the onDidReceiveNotificationResponse callback
      },
    ).then((_) {
      if (checkPermission) return this.checkPermission();
    });
  }

  @override
  Future<void> checkPermission() async {
    var androidInfo = await DeviceInfoPlugin().androidInfo;
    final sdkInt = androidInfo.version.sdkInt;
    if (sdkInt >= 33) {
      final granted = await _plugin?.requestNotificationsPermission();
      if (granted == true) {
        await _plugin?.requestExactAlarmsPermission();
      }
    }
  }

  @override
  Future<void> schedule({
    required Duration duration,
    required String title,
    required String body,
    NotificationChannels channel = NotificationChannels.scheduledMessage,
    int? id,
    String? payload,
  }) async {
    return _plugin?.zonedSchedule(
      id ?? generateRandomId(),
      title,
      body,
      generateSchedule(duration),
      _buildDetails(ticker: title, channel: channel),
      scheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  @override
  Future<void> show({
    required String title,
    required String body,
    NotificationChannels channel = NotificationChannels.general,
    int? id,
    String? payload,
  }) async {
    return _plugin?.show(
      id ?? generateRandomId(),
      title,
      body,
      notificationDetails: _buildDetails(ticker: title, channel: channel),
      payload: payload,
    );
  }

  AndroidNotificationDetails _buildDetails({
    required String ticker,
    NotificationChannels channel = NotificationChannels.general,
  }) {
    return AndroidNotificationDetails(
      channel.name,
      channel.title,
      importance: channel.importance,
      priority: channel.priority,
      ticker: ticker,
      color: ColorName.planetBlack,
    );
  }
}
