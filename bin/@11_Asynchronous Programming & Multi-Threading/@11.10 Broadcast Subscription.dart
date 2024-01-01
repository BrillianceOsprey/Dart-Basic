// Hot Stream or broadcast subscription

// ignore_for_file: avoid_types_as_parameter_names

import 'dart:async';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main() async {
  addNum();
  Stream stream = streamController.stream.asBroadcastStream();
  stream.listen((num) {
    print('Listener 1 $num');
  });
  // await Future.delayed(Duration(seconds: 1));
  stream.listen((num) {
    print('Listener 2 $num');
  });
  await Future.delayed(Duration(seconds: 1));
  stream.listen((num) {
    print('Listener 3 $num');
  });
}

void addNum() async {
  for (int i = 1; i < 3; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    streamSink.add(i);
  }
}
