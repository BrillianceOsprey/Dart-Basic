// triple လို့ အမည်ရတဲ့ Higher order function ၁ ခု ​ရေးပါ။ အဲဒီ function မှာ named parameter 2 ခု ပါရပါမယ်။
//ပထမ ၁ ခုက num ဆိုတဲ့ int parameter ဖြစ်ပြီး​တော့ ဒုတိယ က int parameter ၁ ခုပါတဲ့ Function ဖြစ်ပါမယ်။
//အဲ့ဒီ function ကို ​ခေါ်ရင် ပထမ parameter မှာ ဂဏန်း ၁ ခု​ပေးလိုက်ရင် ဒုတိယ parameter ရဲ့ function argument က​နေ
// အဲ့ဂဏန်းရဲ့ ၃ ဆ တန်ဖိုး ထွက်​ပေးရပါ့မယ်။
// Requirement:
// square(
// num : 2,
// result : (res) => print(res);
// );
// Output : 6

//by Kyaw Thet
// void main() => triple(num: 3, result: (res) => print(res));
// triple({required int num, required Function(int ans) result,}) => result(num * 3);

// void main(){
//   int higherOrderFunction = triple(num: 5);
//   print(higherOrderFunction);
// }
// int intFuction(int num){
//   return num * 3;
// }
// int triple({int? num, Function? intFun}){
//   return intFuction(num!);
// }

// void main() => triple(num: 3, result: resultFun);
// void resultFun(int value){
//   print(value);
// }
// triple({required int num, required Function(int ans) result,}) => result(num * 3);

// ignore_for_file: file_names

void main() {
  int result = multiplyWithFunction(5, (value) => value * 2);
  print(result); // Output: 10
}

int multiplyWithFunction(int number, int Function(int) multiplyFunc) {
  return multiplyFunc(number);
}
