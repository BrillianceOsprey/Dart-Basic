// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, file_names
// import 'package:meta/meta.dart';

void main(List<String> arguments) {
  final person1 = Person(name: 'joker', age: 12);
  final person2 = person1.copyWith(age: person1.age + 2);
  // print(person1.age);
  // print(person2.age);

  final person1Updated = Person(name: person1.name, age: person1.age + 1);
  print(person1Updated.age);
}

// @immutable
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
