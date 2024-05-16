extension DateTimeExt on DateTime {
  DateTime get startOfDay {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  DateTime get endOfDay {
    return startOfDay.add(const Duration(days: 1));
  }
}
