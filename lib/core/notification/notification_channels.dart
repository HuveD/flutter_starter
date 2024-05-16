import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../l10n/l10n.dart';

enum NotificationChannels {
  general,
  scheduledMessage,
}

extension AndroidNotificationChannelsExtension on NotificationChannels {
  String get title {
    switch (this) {
      case NotificationChannels.general:
        return l10n.notification_channel_general;
      case NotificationChannels.scheduledMessage:
        return l10n.notification_channel_scheduled_message;
    }
  }

  Importance get importance {
    switch (this) {
      case NotificationChannels.general:
        return Importance.max;
      case NotificationChannels.scheduledMessage:
        return Importance.defaultImportance;
    }
  }

  Priority get priority {
    switch (this) {
      case NotificationChannels.general:
        return Priority.high;
      case NotificationChannels.scheduledMessage:
        return Priority.defaultPriority;
    }
  }
}
