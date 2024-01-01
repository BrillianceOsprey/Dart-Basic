//addNumber လို့ခေါ်တဲ့ function ၁ မှာ int List ၁ ခု ကို parameter အနေနဲ့ထည့်ထားမယ်။ အဲ့ဒီ function ထဲမှာပဲ
//add လို့ ခေါ်တဲ့ int function ၁ ခုထပ်ရှိပြီး list ထဲကပါတဲ့  integer တွေအားလုံးကို ပေါင်းပြီး add ကို return ပြန်ပေးရမယ်။

// ignore_for_file: file_names

void main() {
  addNumber(list: [4, 3, 2, 1]);
}

void addNumber({required List<int> list}) {
  add() {
    int sumTotal = 0;
    for (var element in list) {
      sumTotal += element;
    }
    print(sumTotal);
  }

  return add();
}

// void main(){
//   List<int> numList = [4,3,2,1];
//   int sum = addNumber(list: numList);
//   print(sum);
// }
// int addNumber({required List<int> list}){
//   int sumTotal = 0;
//   int add(){
//     list.forEach((element) {
//       sumTotal += element;
//     });
//     return sumTotal;
//   }
//   return add();
// }

// void main(){
//   List<int> numList = [5,4,3,2,1];
//   var st = addNumber(list: numList);
//   print(st);
// }
// int totalSum = 0;
//   addFunction(List<int> list){
//     for(int i = 0; i<list.length; i++){
//       totalSum += list[i];
//     }
//     return totalSum;
//   }
// addNumber({List<int>? list, Function? add}){
//   return addFunction(list!);
// }
