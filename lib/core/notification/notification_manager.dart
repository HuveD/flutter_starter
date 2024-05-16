import 'dart:io';

import 'package:flutter_starter/core/notification/android_notification.dart';
import 'package:flutter_starter/core/notification/ios_notification.dart';
import 'package:flutter_starter/core/notification/notification.if.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../main.dart';
import 'notification_channels.dart';

part 'notification_manager.g.dart';

@Riverpod(keepAlive: true)
MeNotificationManager notificationManager(NotificationManagerRef ref) {
  if (Platform.isAndroid) {
    return MeNotificationManager._(AndroidNotification());
  } else if (Platform.isIOS) {
    return MeNotificationManager._(IosNotification());
  } else {
    throw Exception('Platform not supported');
  }
}

class MeNotificationManager<T extends MeNotification> {
  final T _notification;

  MeNotificationManager._(this._notification);

  Future<void> initialize() {
    return _notification.initialize();
  }

  Future<void> checkPermission() {
    return _notification.checkPermission();
  }

  Future<void> schedule({
    required Duration duration,
    required String title,
    required String body,
    NotificationChannels channel = NotificationChannels.scheduledMessage,
    int? id,
    String? payload,
  }) {
    logger.d("The notification scheduled after $duration");
    return _notification.schedule(
      duration: duration,
      title: title,
      body: body,
      channel: channel,
      id: id,
      payload: payload,
    );
  }

  Future<void> show({
    required String title,
    required String body,
    NotificationChannels channel = NotificationChannels.general,
    int? id,
    String? payload,
  }) {
    return _notification.show(
      title: title,
      body: body,
      channel: channel,
      id: id,
      payload: payload,
    );
  }
}
