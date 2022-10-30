import 'package:intl/intl.dart';

class DateTimeUtils {
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('EEEE, MMMM d, y').format(dateTime);
  }

  static String getFormattedTime(DateTime dateTime) {
    return DateFormat('h:mm a').format(dateTime);
  }
}
