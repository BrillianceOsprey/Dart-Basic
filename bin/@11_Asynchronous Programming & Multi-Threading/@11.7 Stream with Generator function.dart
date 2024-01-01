//Sync generator // Iterable
//Async generator and recursive function

// ignore_for_file: avoid_types_as_parameter_names

void main() {
  print('Normal work1');
  getNum(7).listen((num) => print(num))
    ..onDone(() {
      print('Done');
    })
    ..onError((error) => print(error));
  print('Normal work2');
  print('Normal work3');
}

Stream<int> getNum(int num) async* {
  if (num > 0) {
    await Future.delayed(Duration(seconds: 1));
    if (num == 3) {
      throw Exception('This is error'); // stop program
    }
    yield num;
    yield* getNum(num - 1); // recursive function
  }
}

// void main(){
//   print('Normal work1');
//   getNum().forEach((element) {print(element);});
//   print('Normal work2');
//   print('Normal work3');
// }
// Iterable<int> getNum() sync*{ //Sync generator
//   for(int i=0; i<4; i++){
//     yield i;
//   }
// }
//output
//Normal work1
// 0
// 1
// 2
// 3
// Normal work2
// Normal work3
