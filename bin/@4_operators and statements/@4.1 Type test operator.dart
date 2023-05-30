//type test //typecast
// is is! as
//smart cast // safe cast

// void main(){
//  dynamic s = 'This is string';
//  if(s is String){
//    print(s.length);
//  }
//  else{
//    print('s is not string'); // safecast
//  }
//  }

// void main() {
//   dynamic s = 1;
//   String s1 = 'This is s1 string';
//   print(s1.length);
//   print((s as String).length);
//   // smartcast use as
//   // can face runtime error/ type 'int' is not a subtype of type 'String' in type cast
// }

// void main() {
//   dynamic s = 'This is string';
//   String s1 = 'This is s1 string';
//   print(s1.length);
//   print((s as String).length); // smartcast use as
// }

// void main() {
//   dynamic a = 5;
//   print(a is double);
//   print(a is int);
//   print(a is! int);
// } 

/**void main(){
 int a = 5;
 print(a is double);
 print(a is int); //Unnecessary type check; the result is always 'true'.
} */
