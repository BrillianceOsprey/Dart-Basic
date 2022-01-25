// Dart Programming language မှာရှိတဲ့ class အားလုံးမှာ သက်ရောက်မယ့် typeInfo လို့ အမည်ရတဲ့  
// extension method ၁ ခုဖန်တီးပေးပါ။ အဲ့ဒီ method ရဲ့ အလုပ်ကတော့ class ရဲ့ type info ကိုပြပေးရပါမယ်။ 
// Eg.
// true.typeInfo(); // runtimeType
// Output :
// This is bool data type

void main(){
  'string'.typeInfo();
  1.typeInfo();
  true.typeInfo();
  [].typeInfo();
}
extension on Object{
  void typeInfo() => print('This is ${this.runtimeType} data type');
}
