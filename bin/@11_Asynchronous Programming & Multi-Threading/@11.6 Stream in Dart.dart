// Reactive Programming in Dart
// async generator 

void main(){
  Stream<int> stream = getNumber();
  stream.listen((event) {print(event);});
}
Stream<int> getNumber()async*{
  for(int i=1; i<4; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
 yield 4;
 Future.delayed(Duration(seconds: 2)); // ***
 yield 5;
 Future.delayed(Duration(seconds: 2));
 yield 6;
}


/**
void main(){
  List<int> list = [2,3,4,5];
  Stream<int> stream = Stream.fromIterable(list);
  stream.listen((event) {print(event);});
}
 */