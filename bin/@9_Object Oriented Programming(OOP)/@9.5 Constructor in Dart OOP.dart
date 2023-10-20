// Constructor, 3 type
// default constructor
// name constructor
// factory constructor, return constructor

// ignore_for_file: unused_local_variable

void main() {
  // Person person = Person(); // default constructor
  // Person person1 = Person.age(); // name constructor
  Person person = Person(2); // factory constructor
}

class Person {
  String name = 'Mg Mg';
  int age = 25;
  String address = 'MDY';

  // Person(){
  //   print("Name is $name. Age is $age. Address is $address");
  // }
  Person.name() {
    print('Name is $name');
  }
  Person.age() {
    print("Age is $age");
  }
  Person.address() {
    print("Address is $address");
  }
  factory Person(int nameConstructor) {
    if (nameConstructor == 1) {
      return Person.name();
    } else if (nameConstructor == 2) {
      return Person.age();
    } else {
      return Person.address();
    }
  }
}
