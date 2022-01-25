// method override, polymorphism

void main(){
  Engineer engineer = Engineer();
  engineer.speak();
  print(engineer.name);
}
class Person{
  String name = 'Mg Mg';
  int? age;
  void speak() => print('Person, $name can speak burmese');
}
class Engineer extends Person{
  @override
  String name = "Ma Ma";
  @override
  void speak() {
    print('Engineer, $name should speak Engish and burmese languages');
    // super.speak();
  }
}