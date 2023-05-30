// =(assign) += , -+, *=, /=, ~/=, %=
// void main(){
//  double a = 7;
//  a %= 2; // a = a ~/ 3
//  print(a);
// }

void main() {
  double a = 7;
  // a += 3; // a = a + 3
  // a -= 3; // a = a - 3
  // a *= 3; // a = a * 3
  // a ~/= 3; // a = a ~/ 3
  // a /= 2; // a = a / 2 => 3.5 double
  a %= 3; // a = a % 3
  print(a);
}
