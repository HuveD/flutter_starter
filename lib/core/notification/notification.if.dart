import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'notification_channels.dart';

abstract class MeNotification {
  static Future<void> configureLocalTimeZone() async {
    tz.initializeTimeZones();
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
  }

  /// 초기화
  Future<void> initialize({bool checkPermission = false});

  /// 권한 요청
  Future<void> checkPermission();

  /// 알림 예약
  Future<void> schedule({
    required Duration duration,
    required String title,
    required String body,
    NotificationChannels channel = NotificationChannels.scheduledMessage,
    int? id,
    String? payload,
  });

  /// 알림 표시
  Future<void> show({
    required String title,
    required String body,
    NotificationChannels channel = NotificationChannels.general,
    int? id,
    String? payload,
  });

  /// Notification Random ID 생성
  int generateRandomId() {
    final now = DateTime.now();
    return 1000000 * now.second + 1000 * now.millisecond + now.microsecond;
  }

  /// 예약 시간 설정
  tz.TZDateTime generateSchedule(Duration duration) {
    return tz.TZDateTime.now(tz.local).add(duration);
  }
}

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // handle action
}
