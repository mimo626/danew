import 'package:intl/intl.dart';

class DateFormatter {
  /// 날짜 포멧터 (년.월.일)
  static String formatYearMonthDate(DateTime dateTime) {
    final formatedDate = DateFormat('yyyy.MM.dd').format(dateTime);
    return formatedDate;
  }
}