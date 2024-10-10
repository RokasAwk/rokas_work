import 'package:intl/intl.dart';

mixin DateUtil {
  String formatDateTime(int unixTimestamp) {
    return _formatDateTime(unixTimestamp);
  }
}

extension DateTimeHelper on int {
  String toDateTime() {
    try {
      return _formatDateTime(this);
    } catch (e) {
      return format;
    }
  }
}

const String format = 'yyyy-MM-dd HH:mm:ss';
const String onlyDateFormat = 'yyyy-MM-dd';
const String onlyDateCustomFormat = 'yyyy/M/d';
const String dateTimeWithoutYearFormat = 'MM-dd HH:mm:ss';
const String dateTimeWithoutSecondFormat = 'yyyy-MM-dd HH:mm';
const String utcDateFormat = 'yyyy-MM-ddTHH:mm:ss';

String _formatDateTime(int unixTimestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(unixTimestamp);
  return DateFormat(format).format(dateTime);
}

extension DateTimeFormatter on DateTime {
  String onlyDate() {
    return DateFormat(onlyDateFormat).format(toLocal());
  }

  String onlyDateCustom() {
    return DateFormat(onlyDateCustomFormat).format(toLocal());
  }

  String toDateTimeString() {
    return DateFormat(format).format(toLocal());
  }

  String toDateTimeStringWithoutYear() {
    return DateFormat(dateTimeWithoutYearFormat).format(toLocal());
  }

  String toDateTimeStringWithoutSecond() {
    return DateFormat(dateTimeWithoutSecondFormat).format(toLocal());
  }

  String toUtcDateFormatString() {
    return "${DateFormat(utcDateFormat).format(this)}Z";
  }

  DateTime toDateTimeStart() => DateTime(year, month, day);

  DateTime toDateTimeEnd() => DateTime(year, month, day, 23, 59, 59);
}
