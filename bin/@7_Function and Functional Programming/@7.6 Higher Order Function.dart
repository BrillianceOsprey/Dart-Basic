// First class Function and Higher order function
// first class object as function [Function can use with var]
// function as a parameter, function as a return type [Higher order function]

void main() {
  int rF = retrunSquare(4);
  print(rF);
}

int retrunSquare(int num) {
  int square() {
    return num * num;
  }

  return square();
}

// int square(int num){
//   return  num * num;
// }
// int retrunSquare(int num){
//   return square(num);
// }


/**
void main(){
  showFun(showInfo);
}
void showInfo(){
  print('Function as a parameter');
  print('Function as a parameter');
}
void showFun(Function info){
  info();
}
 */


/**
void main(){
  var fc = info;
  fc('Myo Min Latt', '25');
}
void info(String name, String age){  
  print('First class object as function');
  print('$name and $age');
}
 */


/**
void main(){
  var fc = firstClassEx;
  fc();
}
void firstClassEx(){
  print('First class object as function');
}
 */