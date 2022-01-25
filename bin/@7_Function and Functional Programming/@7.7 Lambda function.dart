//Lambda or nameless or anonymous function
//first class object


void main(){
  List<int> list = [1,2,3,4,5];
  list.forEach(showInList);
  // list.forEach((element) { }) anonymous 
}  
void showInList (int element){
  print(element);
}




/**
void main(){
  info('Myo Min latt', '23');
}

Function info = (String name, String age){
  print('$name is $age');
};
 */
