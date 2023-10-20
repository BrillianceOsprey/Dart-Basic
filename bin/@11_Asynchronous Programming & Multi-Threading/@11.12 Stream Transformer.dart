// Stream Transformer class and operators

// ignore_for_file: avoid_types_as_parameter_names

import 'dart:async';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main() {
  Stream stream = streamController.stream;
  getInt();
  stream
      //.where((num) => num ~/ 2 == 2)
      .map((event) => 'This is map $event')
      // .skip(2)
      // .take(3)
      // .takeWhile((element) => element < 5)
      // .skipWhile((element) => element < 3)
      .listen(
    (num) {
      print(num);
    },
    cancelOnError: true,
    // onError: (e) => print(e)
  )
      // .onDone(() {print('Done');})
      .onError((e) => print(e));
}

void getInt() async {
  for (int i = 1; i < 10; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    // if(i==3){
    //   streamSink.addError('Step 3 add error');
    // }
    streamSink.add(i);
  }
}


/**
import 'dart:async';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main(){
  Stream stream = streamController.stream;
  StreamTransformer streamTransformer = StreamTransformer.fromHandlers(
    handleData: (data, EventSink sink){
      sink.add('This is Transformer $data');
    },
    handleError: (error, stackTrace, sink) => sink.add(error),
    handleDone: (sink) => sink.add(121),
  );
  getInt();
  stream
  .transform(streamTransformer)
  .listen((num) {print(num);});
}
void getInt()async{
  for(int i=1; i<10; i++){
    await Future.delayed(Duration(milliseconds: 300));
    if(i==3){
      streamSink.addError('Step 3 add error');
    }
    streamSink.add(i);
  }
}
 */
