// Create a class named Currency which has one int property mmk.This class has
// two named constructors toUSD and toEuro which convert mmk to USD and Euro respectively.
// [assume 1 USD = 1500 mmk , 1 Euro = 2000mmk

// ignore_for_file: file_names

void main() {
  Currency.toUSD(4500);
  Currency.toEuro(7000);
}

class Currency {
  int? mmk; // int property mmk
  Currency.toUSD(mmk) {
    print("${mmk / 1500} USD");
  }
  Currency.toEuro(mmk) {
    print('${mmk / 2000} Euro');
  }
}
