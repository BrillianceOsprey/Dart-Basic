// --? --: --;

void main(){
  int x = 9;
  int y;
  if(x == 7){
    y=x;
  }
  else if(x == 9){
    y=x;
  }
  else{
    y=0;
  }
  print(y);
  // (x==7)? y=x: y=0;
  // y = (x==7)? 7: 0;
  y = (x==7)? 7: (x==9)? 9: 0;
  print(y);
}

/**
  void main(){
  String str = "Hello";
  if(str == "Hello"){
    print('str is Hello');
  }
  else if(str == 'Hey'){
    print('str is Hey');
  }
  else {
    print('Non of the bove');
  }
  (str == "Hello")? print('str is Hello'): (str == 'Hey')? print('str is Hey'):print('Non of the above');
}
 */


/**
  void main(){
  String str = "Hi";
  if(str == "hello"){
    print('str is Hello');
  }
  else {
    print('str is not Hello');
  }
  (str == "Hello")? print('str is Hello'): print('str is not Hello');
}
 */