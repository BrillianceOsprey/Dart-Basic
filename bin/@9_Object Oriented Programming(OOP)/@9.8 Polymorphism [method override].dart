// method override, polymorphism
// Don't override fields(variable).
// can extend method of the class

// ignore_for_file: overridden_fields

void main() {
  Engineer engineer = Engineer();
  engineer.speak();
  print(engineer.name);
}

class Person {
  String name = 'Mg Mg';
  int? age;
  void speak() => print('Person, $name can speak burmese');
}

class Engineer extends Person {
  @override
  String name = "Ma Ma"; // Don't override fields.
  @override
  void speak() {
    print('Engineer, $name should speak Engish and burmese languages');
    // super.speak();
  }
}
