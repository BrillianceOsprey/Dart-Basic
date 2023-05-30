// Write a program to print numbers from 1 to 100 which are divisible by 3 using for loop or while loop.
// ၁ မှ ၁၀၀ အထိ ၃ ဖြင့်စားလျှင်ပြတ်သော ကိန်းများကို print ထုတ်ပြပါ။
// for loop (သို့) while loop ကိုသုံးနိုင်ပါတယ်။

// void main(){
//   int i = 0;
//   while(i<=100){
//     i++;
//     if(i%3==0){
//       print(i);
//     }
//   }
// }

// void main() {
//   for (int i = 0; i <= 100; i += 3) {
//     if (i > 1 && i <= 100) print(i);
//   }
// }

// void main() {
//   for (int i = 0; i <= 100; i++) {
//     if (i >= 3 && i <= 100) {
//       while (i % 3 == 0) {
//         print(i);
//       }
//     }
//   }
// }

// void main() {
//   for (int i = 0; i <= 100; i = i + 3) {
//     if (i > 1 && i <= 100) print(i);
//   }
// }
void main() {
  int i = 0;
  while (i <= 100) {
    i++;
    if (i % 9 == 0) {
      print(i);
    }
  }
}
