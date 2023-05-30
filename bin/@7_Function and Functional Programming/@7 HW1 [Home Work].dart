// Write a function with a parameter of dynamic type and that return a type of parameter.
//Print this function in main.
// dynamic type parameter ၁ခု ပါတဲ့ function ၁ ခုကိုရေးပါ။ အဲ့ဒီ function က Parameter ရဲ့ Data type ကို
//String အနေနဲ့ return ပြန်ပေးရမှာဖြစ်ပါတယ်။ Main function ကနေ အဲ့ဒီ function ကိုခေါ်ပြီး print ထုတ်ပြပါ။

// void main(){
//   String p = person(name: 'Kyaw Kyaw');
//   print(p.runtimeType);
//   print(p);
// }
//   String person({dynamic name}){
//    return 'My name is $name';
// }

void main() {
  var p = person(name: 'Mg Mg', age: 24);
  print(p);
}

String person({dynamic name, dynamic age}) {
  return "Name is $name and age is $age";
}
