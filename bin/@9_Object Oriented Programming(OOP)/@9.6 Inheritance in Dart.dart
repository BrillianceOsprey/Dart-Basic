// inheritance
// extends
// check constructor with parameter // super consturctor
// super, this at method in child class
// how to change constructor of parent class?



void main(){
  Engineer engineer = Engineer('MDY');
  engineer.speak();
  engineer.run();
  engineer.degree = 'BE';
  print(engineer.degree);
  engineer.name = 'Tun Tun';
  print(engineer.name);
  engineer.printHeight();
  Admin admin = Admin('YGN');
  admin.printHeight();
}
class Person{ // Parent Class
  String name = 'Mg';
  int age = 23;
  int height = 5;
  Person(String address){ // check constructor with parameter
    print('Person lives in $address');
  }
  void speak() => print('can speck burmese language');
  void run() => print('can walk quickly');
}
class Engineer extends Person{ // child class
  Engineer(String adress) : super(adress); // super constructor
  String? degree;
  int height = 6;
  void job() => print("Enigneer makes a project");
  void speak() => print('Can speack english language');
  void printHeight(){
    this.speak(); // Engnieer's function
    super.speak(); // People's Function
    print(super.height); // People's Height
    print(this.height); // Engineer's Height
  }
}

class Admin extends Engineer{ // extra testing
  Admin(String adress) : super(adress);
  int height = 7;
  void printHeight(){
    this.speak(); // Engnieer's function
    super.speak(); // People's Function
    print(super.height); // People's Height
    print(this.height); // Engineer's Height
  }
}

class Teacher extends Person{
  Teacher(String address) : super(address);


}


