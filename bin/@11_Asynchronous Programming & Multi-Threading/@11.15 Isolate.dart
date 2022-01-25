// Concurrency with isolate…
// mutli thread// own thread// one parameter in method

import 'dart:isolate';
void main(){
  Isolate.spawn(work1, 6);
  work2(5);
  // print('Main function => ${Isolate.current.debugName} Isolate');
}
void work1(int end){
  print('Work1 =>  ${Isolate.current.debugName} Isolate');
  for(int i=1; i<=end; i++){
    print('Work1 $i');
  }
}
void work2(int end){
  print('Work2 => ${Isolate.current.debugName} Isolate');
  for(int i=1; i<=end; i++){
    print('Work2 $i');
  }
}



