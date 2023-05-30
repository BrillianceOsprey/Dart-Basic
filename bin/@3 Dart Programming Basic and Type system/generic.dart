void main() {
  T stringToEnum<T>(String str, Iterable<T> values) {
    return values.firstWhere(
      (value) => value.toString().split('.')[1] == str,
      // orElse: () => T,
    );
  }

  Size size = stringToEnum<Size>("small", Size.values);
  print(size.index);
}

enum Size { small, medium, large }
