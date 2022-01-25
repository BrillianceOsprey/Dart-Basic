// EvenLoop
// Normal Work
// Event Loop > 1.Micro Task Queqe > 2.Event Queqe

import 'dart:async';

void main(){
  Future((){print('Heavy Task1');});
  scheduleMicrotask((){print('Small heavy task1');});
  print('First Task');

  Future((){print('Heavy Task2');});
  scheduleMicrotask((){print('Small heavy task2');});
  print('Second Task');

  Future((){print('Heavy Task3');});
  scheduleMicrotask((){print('Small heavy task3');});
  print('Third Task');
  
  
}