// Error Handling in Stream

import 'dart:async';

import 'dart:math';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main(){
  Stream stream = streamController.stream;
  stream
  .listen(
    (num) {print(num);},
    onError: (e)=> print(e),
    cancelOnError: true,
    // onDone: () => print('Done')
  );
  addNum();
}
void addNum()async{
  for(int i=1; i<7; i++){
    await Future.delayed(Duration(milliseconds: 500));
    streamSink.add(Random().nextInt(20));
    if(i==3){
      streamSink.addError('This is error');
    }
  }
}