// extension
// could not assign extension name

// void main(){
//   Student student = Student();
//   student.showInfo('Aung Aung');
// }
// class Student{

// }
// extension on Student{ // not assign extension name
//   void showInfo(String name){
//     print('Name is $name');
//   }
// }

void main() {
  int num = 3;
  // print(num.tenTime());
  // num.addFive();
  print(num.addTwo);
}

extension ExtInt on int {
  int tenTime() {
    return (this * 10);
  }

  void addFive() {
    print(this + 5);
  }

// Use getter method
  int get addTwo {
    return this + 2;
  }
}
