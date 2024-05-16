import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_starter/core/notification/notification.if.dart';
import 'package:flutter_starter/core/notification/notification_channels.dart';

class IosNotification extends MeNotification {
  final IOSFlutterLocalNotificationsPlugin? _plugin;

  IosNotification()
      : _plugin = FlutterLocalNotificationsPlugin()
            .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();

  @override
  Future<void> initialize({bool checkPermission = false}) async {
    await _plugin?.initialize(
      DarwinInitializationSettings(
        requestSoundPermission: false,
        requestBadgePermission: false,
        requestAlertPermission: false,
        notificationCategories: [
          ...NotificationChannels.values.map(
            (channel) => DarwinNotificationCategory(
              channel.name,
              options: <DarwinNotificationCategoryOption>{
                DarwinNotificationCategoryOption.hiddenPreviewShowTitle,
              },
            ),
          ),
        ],
      ),
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
        // fire when a notification has been tapped on via the onDidReceiveNotificationResponse callback
      },
    ).then((initialized) {
      if (checkPermission) return this.checkPermission();
    });
  }

  @override
  Future<void> checkPermission() async {
    await _plugin?.requestPermissions(
      sound: true,
      alert: true,
      badge: true,
    );
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
      DarwinNotificationDetails(categoryIdentifier: channel.name),
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
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
      payload: payload,
      notificationDetails: DarwinNotificationDetails(categoryIdentifier: channel.name),
    );
  }
}
