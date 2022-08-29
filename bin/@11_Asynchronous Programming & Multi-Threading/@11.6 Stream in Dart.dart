// Reactive Programming in Dart
// async generator
// iterate means perform or utter repeatedly.
// check await keywork

void main() {
  Stream<int> stream = getNumber();
  stream.listen((event) {
    print(event);
  });
}

Stream<int> getNumber() async* {
  // async generator
  // for (int i = 1; i < 4; i++) {
  //   await Future.delayed(Duration(seconds: 1));
  //   yield i;
  // }
  yield 4;
  await Future.delayed(Duration(seconds: 1)); // *** wait 1 seconds
  yield 5;
  Future.delayed(Duration(seconds: 1)); // not affect for duration
  yield 6;
}

// void main() {
//   List<int> list = [2, 3, 4, 5];
//   Stream<int> stream = Stream.fromIterable(list);
//   stream.listen((event) {
//     print(event);
//   });
// }
