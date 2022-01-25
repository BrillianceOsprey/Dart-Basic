// Future.then

void main(){
  getString().then((data) => print(data));
  // .catchError((e) => print(e()));
  getInt().then((dataInt) => print(dataInt));
  print('First Task');
  print('Second Task');
  print('Third Task');
}
Future<String> getString(){
  return Future.delayed(Duration(seconds: 2), () => 'Future in 2 second');
  // return Future.error(()=> 'This is future error');
}
Future<int> getInt(){
  return Future.delayed(Duration(seconds: 1), () => 111);
}