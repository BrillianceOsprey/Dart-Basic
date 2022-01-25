// callback function
// higher order function and lambda 
// declarative ()

void main(){
  List<int> nums = [2,3,4,5];
  // for (var item in nums) { // imperative style
  // }
  // nums
  // .map((e) => e % 2 == 0? e: 0)
  // .forEach((e) => print(e)); // declarative style
  doubleNum(
    num: () => 5, 
    dd: (d) => print(d)
  );
  squareNum(
    num: 3, 
    sq: (sqNum) => print( sqNum)
  );
}
void squareNum({required int num, Function(int a)? sq}){
  sq!(num * num);
}
void doubleNum({required int Function() num, required Function(int) dd}){
  dd(num() * 2);
}



/**
void main(){
  doubleNum(num: () => 5, dd: (d) => print(d));// imperative style

  squareNum(
    num: 3, 
    sq: (sqNum) => print( sqNum)
  );
}
void squareNum({required int num, required Function(int a) sq}){
  sq(num * num);
}

void doubleNum({required int Function() num, required Function(int) dd}){
  dd(num() * 2);
}
 */


/**
void main(){
  showInfo(() => print('Higher order function & Lumbda function'));
}
void showInfo(Function show){
  show(); // remove return
}
 */


/**
void main(){
  showInfo(info);
}
void info() => print('This is info');
void showInfo(Function show){
  return show();
}
 */