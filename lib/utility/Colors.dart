import 'package:intl/intl.dart';

class Colorscommon {
  static const String redcolor = '#dc3545';
  static const String red = '#d62121';
  static const String whitecolor = '#FFFFFF';
  static const String greycolor = '#6c757d';
  static const String greydark2 = '#7B788A';
  static const String pink = '#e83e8c';
  static const String blue = '#0089d0';
  static const String greencolor = '#28a745';
  static const String whitelite = '#f7f8f9';
  static const String grey_low = '#4b4b4b';
  static const String blackgrey = '#171717';
  static const String black = '#000000';
  static const String lightblack = '#323232';
  static const String toolbar_background = '#dee2e6';
  static const String greenlite = '#FF68BB59';

}

String getCurrentDateTime() {
  final String dateTime =
  DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now()).toString();
  String Valdate = dateTime;
  return Valdate;
} // get current Time and date

String getCurrentDate() {
  final String dateTime =
  DateFormat('dd-MM-yyyy').format(DateTime.now()).toString();
  String Valdate = dateTime;
  return Valdate;
}
