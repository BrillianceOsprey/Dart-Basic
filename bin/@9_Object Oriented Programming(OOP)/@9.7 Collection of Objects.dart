// collection of objects

void main() {
  Person person1 = Person();
  person1.name = 'Thiha';
  person1.age = 24;

  Person person2 = Person();
  person2.name = 'Ma Ma';
  person2.age = 25;
  List<Person> persons = [person1, person2]; //collection of objects
  List<String> nameList = [];
  for (var value in persons) {
    // print(value.speak);
    print('Name is ${value.name}. Age is ${value.age}');
    nameList.add(value.name.toString());
    print(value.name);
    value.speak();
    value.run();
    print('........');
  }
  print(nameList);
}

class Person {
  String? name;
  int? age;
  void speak() => print("Name, $name can speak");
  void run() => print('Name, $name can run');
}
