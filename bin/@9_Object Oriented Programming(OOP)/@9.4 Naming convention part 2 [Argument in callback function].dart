// argument in callback function, under scole _

// ignore_for_file: avoid_types_as_parameter_names

void main() {
  // calculate(num: 2, cal: (single, _, __, fourth){
  //   print('$single');
  // });
  calculate(
      num: 2,
      cal: (single, double, triple, fourth) {
        print('$single $double $triple $fourth');
      });
}

void calculate({required int num, required Function(int, int, int, int) cal}) {
  cal(num * 1, num * 2, num * 3, num * 4);
}
