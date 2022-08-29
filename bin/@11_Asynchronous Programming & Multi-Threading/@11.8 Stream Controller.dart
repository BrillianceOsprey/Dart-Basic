// streamcontroller

import 'dart:async';

import 'dart:math';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main() {
  streamSink.add(10);
  Stream stream = streamController.stream;
  stream.listen((num) {
    print(num);
  }).onError((error) => print(error));
  streamSink.add(20);
  addNum();
}

void addNum() async {
  for (int i = 0; i < 7; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    streamSink.add(Random().nextInt(20));
    if (i == 3) {
      streamSink.addError('This is error'); // run with error message to the end
    }
  }
}
