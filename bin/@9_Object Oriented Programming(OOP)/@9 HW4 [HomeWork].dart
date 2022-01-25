// Staff ဆိုတဲ့ Abstract class  ၁ခု မှာ Engineer, Accountant,  Designer ဆိုပြီး Child class ၃ ခုရှိမယ်ပြီး 
// အဲ့ဒီ Child class တွေထဲမှာ ဘာမှ ရေးထားစရာမလိုပါဘူး။ infoStaff ဆိုတဲ့ function မှာ Staff ကို 
// parameter အနေနဲ့ လက်ခံပြီး Engineer လား Designer လား Accountant လားဆိုပြီး စစ်ပေးရမှာပါ။ // typeinfo
// void infoStaff(Staff staff){
// }

void main(){
  Staff staff1 = Engineer();
  infoStaff(staff1);
  Staff staff2 = Accountant();
  infoStaff(staff2);
  Staff staff3 = Designer();
  infoStaff(staff3);
}
void infoStaff(Staff staff){
  print(staff.runtimeType); 
}
abstract class Staff{}
class Engineer extends Staff{}
class Accountant extends Staff{}
class Designer extends Staff{}

