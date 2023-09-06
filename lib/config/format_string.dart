import 'package:intl/intl.dart';

String formatNumberWithSpaces(int number) {
  final formatter = NumberFormat('###,###');
  return formatter.format(number.toInt()).replaceAll(',', ' ');
}