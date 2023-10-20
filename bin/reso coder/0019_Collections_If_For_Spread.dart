// 0019_Collections_If_For_Spread
// ignore_for_file: file_names

void main() {
  final list1 = ['1', '2', '3'];
  final list2 = ['4', '5', '6'];
  List list = [...list1, ...list2];
  print(list);
}
