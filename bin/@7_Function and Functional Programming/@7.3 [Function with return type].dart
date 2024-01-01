// return type => int, String, bool
// void => not return type, just only function

void main(){
  int? ss = square(3); // int is return type
  print(ss);
}

int? square(int num){ // need return
  return 2*num;
}

// void voidsSquare(int num){ // void is not return type, just only function
//   return 2*num; //A value of type 'int' can't be returned from the function 'voidsSquare' because it has a return type of 'void'.
// }
