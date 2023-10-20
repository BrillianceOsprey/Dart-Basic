// ignore_for_file: unused_field

part 'other_file.dart';

void main(List<String> arguments) {
  _oppositeWay();
}

class PackagePrivateClass {
  final String _packagePrivateField;
  PackagePrivateClass._(this._packagePrivateField);
}
