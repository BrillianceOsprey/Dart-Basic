// rxdart in pub.dev

// subject // streamcontroller // multi_listener
// publicSubject => start to call as soon as listen
// behaviorSubject => start to call the first value before listen
// replaySubject => start to call all value before and after

import 'package:rxdart/rxdart.dart';

// void main(){
//   ReplaySubject replaySubject = ReplaySubject();
//   replaySubject.add('event1');
//   replaySubject.listen((value) {print('Listener1.$value');}); // call all value
//   replaySubject.add('event2');
// }


/**
void main(){
  BehaviorSubject behaviorSubject = BehaviorSubject();
  behaviorSubject.add('event1');
  behaviorSubject.add('event2');
  behaviorSubject.listen((value) {print('Listener1.$value');}); // call first value before
  behaviorSubject.add('event3');
  behaviorSubject.listen((value) {print('Listener2.$value');}); // call first value before
  behaviorSubject.add('event4');
}
 */




void main(){
  PublishSubject publishSubject = PublishSubject();
  publishSubject.add('event1');
  publishSubject.add('event2');
  publishSubject.listen((value) {print('Listener1.$value');});
  publishSubject.add('event3');
  publishSubject.listen((value) {print('Listener2.$value');});
  publishSubject.add('event4');
}
