// Future, async and await

void main()async{
  bool b = await getBool();
  print(b);
  try{
 String str = await getString();
 print(str);
  }
  catch(e){
    print(e);
  }
int integer = await getInt();
print(integer);
}
Future<String> getString()async{
  // return Future.delayed(Duration(seconds: 2), ()=> 'This is String'); // no need to async 
  return 'This is String'; // it is need for async
  // return Future.error('This is error');
}
Future<int> getInt(){
  return Future.delayed((Duration(seconds: 2)), () => 12);
}
Future<bool> getBool()async{
  return true;
}
   


/**
void main()async{
  print('First Task');
  try{
 String str = await getString();
 print(str);
  }
  catch(e){
    print(e);
  }
 print('Second Task');
int integer = await getInt();
print(integer);
}
Future<String> getString()async{
  // return Future.delayed(Duration(seconds: 2), ()=> 'This is String');
  // return 'This is String';
  return Future.error('This is error');
}
Future<int> getInt(){
  return Future.delayed((Duration(seconds: 2)), () => 12);
}
 */

