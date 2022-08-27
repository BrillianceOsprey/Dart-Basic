void main() {
  T stringToEnum<T>(String str, Iterable<T> values) {
    return values.firstWhere(
      (value) => value.toString().split('.')[1] == str,
      // orElse: () => T,
    );
  }

  Size size = stringToEnum<Size>("large", Size.values);
  print(size);
}

enum Size { small, medium, large }
