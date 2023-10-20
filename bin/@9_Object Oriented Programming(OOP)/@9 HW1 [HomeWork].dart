// Create a Map of students that key  is always integer and represent as a roll number and
// value is Student object. Each of Student contains name, age and gender.
// Please create minimum 3 of the students.
// Result:
// Map<int,Student> student = {__,___,___,...};

// void main() {
// Map<int, Student> student = {
// 1: Student(name: 'Mg Mg', age: 15, gender: 'Male'),
// 2: Student(name: 'Hla Hla', age: 17, gender: 'Female'),
// 3: Student(name: 'Ma Ma', age: 20, gender: 'Female')
// };
// print('${student[1]!.name} \n${student[1]!.age} \n${student[1]!.gender}');
// print('${student[2]!.name} \n${student[2]!.age} \n${student[2]!.gender}');
// print('${student[3]!.name} \n${student[3]!.age} \n${student[3]!.gender}');
// }
// class Student {
// String? name, gender;
// int? age;
// Student({required String name, required int age, required String gender}) {
// this.name = name;
// this.age = age;
// this.gender = gender;
// }
// }

// ignore_for_file: file_names

void main() {
  Student student1 = Student();
  student1.name = 'Aung Aung';
  student1.age = 23;
  student1.gender = 'Male';
  Student student2 = Student();
  student2.name = 'Aye Aye';
  student2.age = 22;
  student2.gender = 'Female';
  Student student3 = Student();
  student3.name = 'Bo Bo';
  student3.age = 23;
  student3.gender = 'Male';
  Map<int, Student> map = {1: student1, 2: student2, 3: student3};
  map.forEach((key, value) {
    print('Roll_Number $key. ${value.name}/ ${value.age}/ ${value.gender}');
  });
}

class Student {
  String? name;
  int? age;
  String? gender;
}

/**
void main(){
  Student student1 = Student();
  Student student2 = Student();
  Student student3 = Student();
  Map<int, Student> map = {1:student1, 2:student2, 3:student3};
}

class Student{
  String? name;
  int? age;
  String? gender;
}
 */
