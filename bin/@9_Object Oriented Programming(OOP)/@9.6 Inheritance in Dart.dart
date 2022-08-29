// inheritance
// extends
// check constructor with parameter // super consturctor
// super, this at method in child class
// can call method of parent class
// how to change constructor of parent class?
//

void main() {
  Engineer engineer = Engineer('MDY');
  engineer.speak();
  engineer.run();
  // engineer.degree = 'BE';
  // print(engineer.degree);
  // engineer.name = 'Tun Tun';
  // print(engineer.name);
  engineer.printHeight();
  // Admin admin = Admin('YGN');
  // admin.printHeight();
}

class Person {
  // Parent Class
  String name = 'Mg';
  int age = 23;
  int height = 5;
  Person(String address) {
    // check constructor with parameter
    print('Person lives in $address');
  }
  void speak() => print('Person can speak burmese language');
  void run() => print('Person can run quickly');
}

class Engineer extends Person {
  // child class
  Engineer(String adress) : super(adress); // super constructor
  String? degree;
  @override
  final height = 6;
  void job() => print("Enigneer makes a project");
  @override
  void speak() => print('Engineer can speak english language');
  void printHeight() {
    speak(); // Engnieer's function
    super.speak(); // People's Function
    print(super.height); // People's Height
    print(height); // Engineer's Height
  }
}

class Admin extends Engineer {
  // extra testing
  Admin(String adress) : super(adress);
  int height = 7;
  @override
  void printHeight() {
    speak(); // Engnieer's function
    super.speak(); // People's Function
    print(super.height); // People's Height
    print(height); // Engineer's Height
  }
}

// Text override
// class Base {
//   Object field = 'lorem';

//   Object something = 'change';
// }

// class Bad1 extends Base {
//   @override
//   final field = 'ipsum'; // LINT
// }

// class Bad2 extends Base {
//   @override
//   Object something = 'done'; // LINT
// }

// class Base {
//   Object field = 'lorem';

//   Object something = 'change';
// }

// class Ok extends Base {
//   late Object newField; // OK

//   final Object newFinal = 'ignore'; // OK
// }
