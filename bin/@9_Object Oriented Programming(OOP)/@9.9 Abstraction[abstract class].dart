// Abstraction(abstract class)
// Abstract classes can't be instantiated

void main(){
  // Person person = Person(); // Abstract classes can't be instantiated.
  Engineer engineer = Engineer();
  engineer.name();
  engineer.age();
  var address = engineer.address();
  print(address);
  engineer.job(); // extra method in child class
  engineer.phone(); // extra method in parent class
}

abstract class Person{
  void name();
  void age();
  String address();
  void phone(){
    print('Phone is 09123456789');
  }
}
class Engineer extends Person{
  @override
  String address() {
    return 'Address is YGN';
    // throw UnimplementedError();
  }

  @override
  void age() {
    print('Age is 23');
  }

  @override
  void name() {
    print('Name is Mg Mg');
  }

  void job(){
    print('Job is programmer');
  }

}