// Cancellation stream and closing Stream Controller

import 'dart:async';

StreamController<int> streamController = StreamController();
StreamSink streamSink = streamController.sink;
Stream<int> stream = streamController.stream;
void main() async {
  addNum();
  stream.listen((event) {
    print(event);
  });
  await Future.delayed(Duration(seconds: 2));
  streamController.close(); //
}

void addNum() async {
  for (int i = 1; i < 10; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (streamController.isClosed) {
      break;
    } else {
      streamSink.add(i);
    }
  }
}
