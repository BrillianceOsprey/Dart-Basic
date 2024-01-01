class Number {
  int _num = 3;
  int get num => _num;
  set num(int value) {
    if (value > 0) {
      _num = value;
    } else {
      _num = 1;
    }
  }

  void triple(int n) {
    print(n * num);
  }
}
