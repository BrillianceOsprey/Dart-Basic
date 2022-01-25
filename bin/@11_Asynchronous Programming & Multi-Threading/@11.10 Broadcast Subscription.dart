// Hot Stream or broadcast subscription

import 'dart:async';
import 'dart:math';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main()async{
  addNum();
  Stream stream = streamController.stream.asBroadcastStream();
  stream.listen((num) {print('Listener 1 $num');});
  // await Future.delayed(Duration(seconds: 1));
  stream.listen((num) {print('Listener 2 $num');});
  await Future.delayed(Duration(seconds: 1));
  stream.listen((num) {print('Listener 3 $num');});
}
void addNum()async{
  for(int i=1; i<8; i++){
    await Future.delayed(Duration(milliseconds: 500));
    streamSink.add(i);
  }
}
