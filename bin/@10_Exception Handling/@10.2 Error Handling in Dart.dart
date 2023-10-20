// try
// on --- catch

// ignore_for_file: unused_catch_clause

void main() {
  List num = [1, 2];
  try {
    print(num[1] ~/ 0);
    // print(num[3]); // This is RangeErro
  } on RangeError catch (e) {
    print('This is RangeError');
  } on UnsupportedError catch (e) {
    print('UnsupportedError/ IntegerDivisionByZeroException/ $e');
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
