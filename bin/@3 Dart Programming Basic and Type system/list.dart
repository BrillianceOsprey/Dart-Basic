void main() {
  //First Method - update
  List myList = [1, 2, 3];
  myList[0] = 123;
  // print(myList);

  //Second Method - using .replaceRange() method
  var myList2 = [10, 20, 30, 40, 50];
  myList2.replaceRange(0, 3, [11, 21]);
  // print(myList2);

  List<int> yearList = [];
  for (int i = DateTime.now().year - 10; i < DateTime.now().year + 2; i++) {
    yearList.add(i);
  }
  // print(yearList);

  List numberList = [10, 20, 30, 40, 50, 60, 70];
  int index = numberList.indexWhere((element) => element == 30);
  // print(index);

  List<int> dateList = [];
  for (int i = DateTime.now().year - 10; i < DateTime.now().year + 2; i++) {
    yearList.add(i);
  }

  DateTime now = DateTime.now();
  DateTime firstDayOfMonth =
      DateTime(DateTime.now().year, DateTime.now().month, 1);
  DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
  // print("${lastDayOfMonth.month}/${lastDayOfMonth.day}");
  // print('$now');
  // print('$firstDayOfMonth');
  // print('$lastDayOfMonth');

  List<String> weekDataList = [];
  for (var i = 0; i < 10; i += 2) {
    weekDataList.add(i.toString());
  }
  // print(weekDataList);

  List<Map> mapList = [
    {'key1': 'value1'}
  ];

  mapList.add({'key2': 'value2'});

  print(mapList);
  print(mapList.toString());
}
