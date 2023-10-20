// type alias
// function variable
// variable type as you want
// extension method
// operator(future)

// ignore_for_file: unused_local_variable

void main() {
  SS studentStream;
  S list = [
    {1: "Mg Mg"},
    {2: "Ma Ma"}
  ];
  showInfoOfCityandCountry('Yangon/ Myanmar');
  Info i = showInfoOfCityandCountry;
  i('Mdy');
  Calculate calculate = multiply;
  int c = calculate(2, 3);
  print(c);
}

void showInfoOfCityandCountry(String name) {
  print(name);
}

int add(int num1, int num2) => num1 + num2;
int multiply(int num1, int num2) => num1 * num2;

typedef SS = Stream<List<Map<int, String>>>;
typedef S = List<Map<int, String>>;
typedef Info = void Function(String);
typedef Calculate = int Function(int, int);
