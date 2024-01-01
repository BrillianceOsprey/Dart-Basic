// implements(interface)
// can extend many classes with override using implement
// must override in the parent class

void main() {
  Student student = Student();
  // Myanmar student = Student();
  student.myanmar();
  student.english();
  student
    ..maths01()
    ..science();
}

abstract class Myanmar {
  void myanmar();
  void myanmar01();
}

class English {
  void english() {}
  void english01() {}
}

class Maths {
  void maths() {
    // print('print in class(interface)'); // cannot work at interface class(implement)
  }
}

class Student implements Myanmar, English {
  @override
  void english() {
    print('Student study English');
  }

  void maths01() {
    print('Student study Maths');
  }

  @override
  void myanmar() {
    print('Student study Myanmar');
  }

  @override
  void myanmar01() {
    // TODO: implement myanmar001
  }

  @override
  void english01() {
    // TODO: implement english001
  }

  void science() {
    print('Student studies science');
  }
}
