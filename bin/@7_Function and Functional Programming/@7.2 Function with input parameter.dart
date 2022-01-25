//parameter function

void main(){
  square(3); // argument
  person('Kyaw', '22');
  person2(name: "Tun", age: '22');
}

void square(int num){ //parameter 
  print(num * 3);
}

void person(String name, String age){ // parameter
  print('Name is $name');
  print('Age is $age');
}

void person2({required String? name, String? age}){ // parameter
  print('Name is $name');
  print('Age is $age');
}