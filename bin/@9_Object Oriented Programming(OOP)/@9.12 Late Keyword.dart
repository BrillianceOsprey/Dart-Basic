// late, lazy initialization

void main(){
  // Person person = Person(); // check result
  late Person person = Person(); // check result
  print('Step 1');
  print('Step 2');
  print('Step 3');
  // person.name = 'Mg Mg';
  person.showName();

}
class Person{
  late String name; // variable
  Person(){
    print('Constructor of Person Class');
    name = 'Ma Ma';
  }
  void showName(){
    print('Name is $name');
  }
}
