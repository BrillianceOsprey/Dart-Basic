//for loop

void main() {
  // for (int i = 0; i < 11; i++) {
  // if(i.isEven)
  // print(i);
  // }
  // print('object');

  List<int> yearList = [];
  for (int i = DateTime.now().year - 10; i < DateTime.now().year + 2; i++) {
    yearList.add(i);
  }
  print(yearList);

  // for (var i = 0; i < 5; i++) {
  //   print('i => $i');
  //   for (var j = 0; j < i; j++) {
  //     print('$j * $i = ${j * i}');
  //   }
  // }
}
