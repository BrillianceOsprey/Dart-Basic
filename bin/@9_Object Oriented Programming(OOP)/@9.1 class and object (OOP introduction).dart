void main(){
  Person person = Person(); // instantiate class
  person.name = 'Ma Ma'; // reference variable
  print(person.name);
  print(person.age);
  print(person.address);

  person.speak();
  person.walk();
}

class Person{
  //instance variable
  //property
  String name = 'Mg Mg';
  int age = 23;
  String address = 'MDY';

  //method
  void speak(){
    print('Can speck burmese');
  }
  void walk(){
    print('Can walk quickly');
  }
}