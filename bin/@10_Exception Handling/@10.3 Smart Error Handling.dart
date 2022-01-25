// Error class တွေကို စနစ်တကျ handling လုပ်နည်းပါ။ Flutter မှာ Bloc Pattern ကို လေ့လာရင် ဒီ pattern လေးကိုလဲ
// သိဖို့လိုတဲ့ အတွက်အရေးကြီးပါတယ်။
// custom exception, throw, implement

void main(){
  try {
    numberBetween1to10(0);
  }
  on GreaterThan10Error catch(e){
    print(e.errorMessage);
  }
  on LessThanZeroError catch(e){
    print(e.errorMessage);
  }
  catch (e) {
    print(e);
  }
}
void numberBetween1to10(int num){
  if(num>0 && num<11){
    print(num);
  }
  else if(num>10){
    throw GreaterThan10Error('Number is greater than 10');
  }
  else if(num<1){
    throw LessThanZeroError('Number is less than 1');
  }
  else{
  }
}
class GreaterThan10Error implements Exception{
  final String errorMessage;
  GreaterThan10Error(this.errorMessage);  
}
class LessThanZeroError implements Exception{
  final String errorMessage;
  LessThanZeroError(this.errorMessage);
}

// void main(){
//   try {
//     numberBetween1to10(14);
//   }
//   on GreaterThan10Error catch(e){
//     print(e.errorType);
//   }
//   on LessThanZeroError catch (e) {
//     print(e.errorType);
//   }
//   catch(e){
//     print(e.toString());
//   }
//   finally{
//     print('Done');
//   }
// }
// void numberBetween1to10(int num){
//   if(num > 1 && num <11){
//     print(num);
//   }
//   else if( num >10){
//     throw GreaterThan10Error('greater than 10 Error');
//   }
//   else if (num<0){
//     throw LessThanZeroError('less than 0 Error');
//   }
// }
// class GreaterThan10Error implements Exception{
//   final String errorType;
//   GreaterThan10Error(this.errorType);
// }
// class LessThanZeroError implements Exception{
//   final String errorType;
//   LessThanZeroError(this.errorType);
// }


// void main(){
//   try {
//     numberBetween1to10(12);
//   }
//   on GreaterThan10Error catch(e){
//     print(e.errorMessage);
//   }
//   on LessThan1Error catch(e){
//     print(e.runtimeType); //LessThan1Error
//     print(e.toString()); // Instance of 'LessThan1Error'
//     print(e.errorMessage); // Number is less than zero
//   }
//   catch (e) {
//     // print(e.runtimeType);//GreaterThan10Error
//     print(e.toString()); //Instance of 'GreaterThan10Error'
//   }
//   finally{
//     print('Done');
//   }
// }
// void numberBetween1to10(int num){
//   if(num >= 1 && num <= 10){
//     print(num);
//   }
//   else if(num > 10){
//     throw GreaterThan10Error('Number is greater than 10'); 
//   }
//   else{
//     throw LessThan1Error('Number is less than zero');
//   }
// }
// class GreaterThan10Error implements Exception{
//   final String errorMessage;
//   GreaterThan10Error(this.errorMessage);
// }
// class LessThan1Error implements Exception{
//   final String errorMessage;
//   LessThan1Error(this.errorMessage);
// }


// void main(){
//   numberBetween1to10(20);
// }
// void numberBetween1to10(int num){
//   if(num >= 1 && num <= 10){
//     print(num);
//   }
//   else if(num<1){
//     print('Number is less than 1');
//   }
//   else{
//     print("Number is greater than 10");
//   }
// }