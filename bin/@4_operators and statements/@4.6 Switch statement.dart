//switch case

// void main(){
//   String str = 'H';
//   switch(str){
//     case 'Hello': print('str is Hello');
//     break;
//     case 'Hi': print('str is Hi');
//     break;
//     default: print('Non of the above');
//   }
// }

void main() {
  String str = 'H';
  int number = 1;
  switch (str) {
    case 'Hello':
      print('str is Hello');
      print(number - 1);
      break;
    case 'Hi':
      print('str is Hi');
      print(number);
      break;
    default:
      print('Non of the above');
      print(number + 1);
  }
}
