// implements(interface) 
// can extend many classes with override

void main(){
  Student student = Student();
  // Myanmar student = Student();
  student.myanmar();
  student.english();
  student.maths();
}
class Myanmar{
  void myanmar(){}
}
class English{
  void english(){}
}
class Maths{
  void maths(){
    // print('print in class(interface)'); // cannot work at interface class(implement)
  }
}
class Student implements Myanmar, English, Maths{
  @override
  void english() {
    print('Student study English');
  }
  @override
  void maths() {
    print('Student study Maths');
  }
  @override
  void myanmar() {
    print('Student study Myanmar');
  }
}