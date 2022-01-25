// final => resign
// constant => compile time constant



void main(){
  print(Person.age); // can call static const variable within Person class
  // final Person person = Person('kjk');
  // const Person person = Person(); // cannot assign runtime contant
} 
class Person{
  // String name;
  final String name;
  static const int age = 24;
  Person(this.name){
    print('Name is Mg');
  }
}
