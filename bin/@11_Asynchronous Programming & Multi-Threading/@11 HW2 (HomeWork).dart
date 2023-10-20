// emit လို့ အမည်ရတဲ့ Stream async generator ၁ ခုက​နေ Stream<dynamic> ​တွေကို  ထုတ်​ပေးပါမယ်။
// Stream Transformer class ကို အသုံးပြုပြီး ကိုယ်တိုင် operator ၁ ခု ဖန်တီး​ပေးပါ။ operator ရဲ့အမည်က​တော့
// filterInt ဖြစ်ပြီး emit function ကထုတ်​​ပေးတဲ့ dynamic value ​တွေက​နေ int ကို ပဲ​ရွေးထုတ်​ပေးရပါမယ်။

// import 'dart:async';
// StreamTransformer streamTransformer = StreamTransformer.fromHandlers(
//     handleData: (data,sink){
//       if(data is int) {
//         sink.add(data);
//       }
//     }
// );
// void main()   {
//   emit()
//        .filterInt()
//       .listen((val) { print(val) ;} );
// }
// extension on Stream{
//    Stream filterInt() {
//      return transform(streamTransformer);
//    }
// }
// Stream<dynamic> emit() async*{
//   yield(4);
//   yield(5);
//   yield("hello");
//   yield(true);
// }

// ignore_for_file: file_names

import 'dart:async';

void main() {
  emit().filterInt().listen((event) {
    print(event);
  });
}

StreamTransformer<dynamic, dynamic> streamTransformer =
    StreamTransformer.fromHandlers(handleData: (dynamic data, EventSink sink) {
  if (data is int) {
    sink.add(data);
  }
});

extension FilterInteger on Stream {
  Stream filterInt() {
    return transform(streamTransformer);
  }
}

Stream<dynamic> emit() async* {
  yield 5;
  yield 'String';
  yield [1, 2];
  yield true;
  yield 0.12;
}
