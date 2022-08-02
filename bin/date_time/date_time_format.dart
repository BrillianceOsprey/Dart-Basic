import 'package:date_format/date_format.dart';
// day, weekday, month, substract, yesterday,
// setStringFromDate, findFirstDayOfTheWeek, findLastDayOfTheWeek

void main(List<String> args) {
  DateTime today = DateTime.now();
  DateTime date = today;
  // print(formatDate(
  //     today, [yyyy, ' /', M, '-', MM, '/', m, '-', mm, '-', DD])); // today
  // print(today.subtract(Duration(days: 1))); // yesterday
  // print(today.subtract(Duration(days: 2)));

  // print(date.day);
  // print(DateTime(date.year, date.month, 1).weekday == date.day);
  // print(DateTime(date.year, date.month, 1).weekday);
  // print(formatDate(DateTime(date.year, date.month, 1), ['DD']));
  // print(DateTime(date.year, date.month, 2).weekday);
  // print(formatDate(DateTime(date.year, date.month, 2), ['DD']));
  // print(DateTime(date.year, date.month, 3).weekday);
  // print(formatDate(DateTime(date.year, date.month, 3), ['DD']));
  // print(DateTime(date.year, date.month, 4).weekday);
  // print(formatDate(DateTime(date.year, date.month, 4), ['DD']));
  // print(DateTime(date.year, date.month, 5).weekday);
  // print(formatDate(DateTime(date.year, date.month, 5), ['DD']));
  // print(DateTime(date.year, date.month, 6).weekday);
  // print(formatDate(DateTime(date.year, date.month, 6), ['DD']));
  // print(DateTime(date.year, date.month, 7).weekday);
  // print(formatDate(DateTime(date.year, date.month, 7), ['DD']));
  // print(DateTime(date.year, date.month, 8).weekday);
  // print(formatDate(DateTime(date.year, date.month, 8), ['DD']));
  // print(DateTime(date.year, date.month, 9).weekday);
  // print(formatDate(DateTime(date.year, date.month, 9), ['DD']));

  DateTime setDate = DateTime(today.year, today.month, 12);
  print(getLastMonth(setDate));
  print(findLastDateOfTheMonth(setDate));
  // String setStringFromDate = formatDate(DateTime(today.year, today.month, 14),
  //     ['DD', ' ', 'dd', ' ', 'MM', ' ', 'yyyy']);
  // print(setStringFromDate);
  // print(setDate.subtract(Duration(days: DateTime.now().weekday - 1)));
  // print(setDate.day); // 10
  // print(DateTime.daysPerWeek); // 7
  // print(setDate.weekday); // 3
  // findLastDayOfTheWeek
  // print(setDate.add(Duration(days: DateTime.daysPerWeek - setDate.weekday)));

  // findFirstDayOfTheWeek
  // print(setDate.subtract(Duration(days: setDate.weekday - 1)));
  // print(findFirstDateOfTheWeek(setDate));
  // print(findLastDateOfTheWeek(setDate));
  // print(setDate.subtract(const Duration(days: 7)));
  // print(findFirstDateOfPreviousWeek(setDate));
}

String getFormattedDateString(DateTime date) {
  final formatter = formatDate(DateTime.now(), ['EE', 'DDD', 'mmm']);
  return formatter;
}

String getTodayDateString() => getFormattedDateString(DateTime.now());

// DateTime mostRecentSunday(DateTime date) =>
//     DateTime(date.year, date.month, date.day - date.weekday % 7);

// DateTime mostRecentMonday(DateTime date) =>
//     DateTime(date.year, date.month, date.day - (date.weekday - 1));

// DateTime mostRecentWeekDay(DateTime date, int weekDay) =>
//     DateTime(date.year, date.month, date.day - (date.weekday - weekDay) % 7);

DateTime getYesterday(DateTime today) =>
    today.subtract(const Duration(days: 1));

/// Find the first date of the week which contains the provided date.
///
/// Assume `Monday` is the first day of the week and
/// `Sunday` is the last day of the week
DateTime findFirstDateOfTheWeek(DateTime dateTime) =>
    dateTime.subtract(Duration(days: dateTime.weekday - 1));

/// Find last date of the week which contains provided date.
///
/// Assume `Monday` is the first day of the week and
/// `Sunday` is the last day of the week
findLastDateOfTheWeek(DateTime dateTime) =>
    dateTime.add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));

/// Find first date of previous week using a date in current week.
/// [dateTime] A date in current week.
DateTime findFirstDateOfPreviousWeek(DateTime dateTime) {
  final DateTime sameWeekDayOfLastWeek =
      dateTime.subtract(const Duration(days: 7));
  return findFirstDateOfTheWeek(sameWeekDayOfLastWeek);
}

/// Find last date of previous week using a date in current week.
/// [dateTime] A date in current week.
DateTime findLastDateOfPreviousWeek(DateTime dateTime) {
  final DateTime sameWeekDayOfLastWeek =
      dateTime.subtract(const Duration(days: 7));
  return findLastDateOfTheWeek(sameWeekDayOfLastWeek);
}

/// Find first date of next week using a date in current week.
/// [dateTime] A date in current week.
DateTime findFirstDateOfNextWeek(DateTime dateTime) {
  final DateTime sameWeekDayOfNextWeek = dateTime.add(const Duration(days: 7));
  return findFirstDateOfTheWeek(sameWeekDayOfNextWeek);
}

/// Find last date of next week using a date in current week.
/// [dateTime] A date in current week.
DateTime findLastDateOfNextWeek(DateTime dateTime) {
  final DateTime sameWeekDayOfNextWeek = dateTime.add(const Duration(days: 7));
  return findLastDateOfTheWeek(sameWeekDayOfNextWeek);
}

DateTime getLastMonth(DateTime dateTime) =>
    DateTime(dateTime.year, dateTime.month - 1, dateTime.day);

DateTime findFirstDateOfTheMonth(DateTime dateTime) =>
    DateTime(dateTime.year, dateTime.month, 1);

DateTime findLastDateOfTheMonth(DateTime dateTime) =>
    DateTime(dateTime.year, dateTime.month + 1, 0);

DateTime findFirstDateOfPreviousMonth(DateTime dateTime) {
  final lastMonth = getLastMonth(dateTime);
  return findFirstDateOfTheMonth(lastMonth);
}

DateTime findLastDateOfPreviousMonth(DateTime dateTime) {
  final lastMonth = getLastMonth(dateTime);
  return findLastDateOfTheMonth(lastMonth);
}
