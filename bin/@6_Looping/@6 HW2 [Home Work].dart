// Write a program to print  prime numbers 1 to 50 using for loop and if statement.
// ၁ ကနေ ၅၀ အတွင်းရှိတဲ့ သုဒ္ဓကိန်း များကို ထုတ်ပြပါ။ သုဒ္ဓကိန်း ဆိုတာကတော့ ၁ ကလွဲလို့ ဘာနဲ့မှစားလို့မပြတ်တဲ့ ကိန်းကိုပြောတာပါ။

// void main(){
//   for(int i=1; i<51; i++){
//     if(i%2!=0 && i%3!=0 && i%4!=0 && i%5!=0 && i%6!=0 && i%7!=0 && i%8!=0 && i%9!=0){
//       print(i);
//     }
//   }
// }

// void main() {
//   for (int i = 0; i <= 50; i++) {
//     if (i < 2 && (i % 2) != 2) {
//       print(i);
//     }
//   }
// }
void main() {
  for (int number = 1; number <= 50; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
