// Function argument တွေခေါ်တဲ့နေရာမှာ Smart ကျကျခေါ်လို့ရတဲ့ Dart Programming ရဲ့ feature တွေလေ့လာကြည့်မှာဖြစ်ပါတယ်
// default parameter []
// positional named parameter {}

void main(){
  // defaultPara(); 
  // parameter('Myo Min Latt', 26, 'MDY', "male"); // need to fill, fixed
  // positionalParameter(age: 26, name: 'MML'); // Named parameter can fill arguments anywhere

} 

void defaultPara([int num = 1]){ // default parameter []
  print(2* num);
}

void parameter(String name, int age, String address, String genter){
  print('Name is $name');
  print('Age is $age');
  print('Address is $address');
  print('Genter is $genter');
}

void positionalParameter({required String name, int? age, String? address, String? genter}){
  print('Name is $name');
  print('Age is $age');
  print('Address is $address');
  print('Genter is $genter');
}