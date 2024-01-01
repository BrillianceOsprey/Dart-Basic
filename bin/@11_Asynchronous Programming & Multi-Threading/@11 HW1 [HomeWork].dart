// Future<int> getNumber1 ဆိုတဲ့ function က integer ၁ ခုကို 3 second ကြာရင် return ပြန်ပေးမယ်။
// Future<int> getNumber2 ဆိုတဲ့ function က integer ၁ ခုကို 2 second ကြာရင် return ပြန်ပေးမယ်။
// Main function ထဲမှာ async and await ကိုသုံးပြီး အဲ့ ကိန်း ၂ ခုကို ပေါင်းပေးရပါမယ်။
// Statement က ၁ ကြောင်းပဲ ဖြစ်ရပါမယ်။ ပိုလို့မရပါ။

// ignore_for_file: file_names

void main() async {
  print(await getNumber1() + await getNumber2());
}

Future<int> getNumber1() {
  return Future.delayed(Duration(seconds: 3), () => 3);
}

Future<int> getNumber2() {
  return Future.delayed(Duration(seconds: 2), () => 2);
}
