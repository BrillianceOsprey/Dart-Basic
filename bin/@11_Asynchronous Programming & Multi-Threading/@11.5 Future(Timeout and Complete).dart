// Future
// then, catch// async await
// oncomplete// timeout

void main() {
  getInt()
          .timeout(Duration(seconds: 2),
              onTimeout: () async => 'TimeOut 2 seconds')
          .then((value) => print('Then Value => $value'))
          // .timeout(Duration(seconds: 2), onTimeout: () => print('TimeOut'))
          .catchError((error) => print('Catch Error => $error'))
          .whenComplete(() => print('Done'))
      // .timeout(Duration(seconds: 2)) // exception error
      ; // also can see output
}

Future<String> getInt() {
  return Future.delayed(Duration(seconds: 1),
      () => throw 'This is error'); // no need async for future return
  // return Future.delayed(Duration(seconds: 3),
  //     () => 'Future with String'); // no need async for future return
}
