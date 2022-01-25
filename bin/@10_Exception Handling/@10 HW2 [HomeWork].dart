// validateCharacter ဆိုတဲ့ function ၁ခုမှာ String parameter ၁ခုလက်ခံမယ်။ သူရဲ့ အလုပ်က String ထဲမှာ number 
// ပါမပါစစ်ပေးရမယ်။ String က null သို့မဟုတ် ဘာမှ မထည့်ထားတဲ့ အလွတ်ဖြစ်နေလား စစ်ပေးရပါမယ်။ number ပါနေတာ (သို့)
// String ကအလွတ်ဖြစ်နေတယ်ဆိုရင် Exception ၁ ခုစီထုတ်ပေးရပါမယ်။ အဲ့ဒီ function ကို main function ကနေခေါ်သုံးပြီး
// try catch နဲ့ဖမ်းပြီး ဘာError ဖြစ်တယ်ဆိုတာကို အသေးစိပ်ပြပေးရပါမယ်။


import 'dart:math';

void main(){
  try {
    validateCharacter('a');
  }
  on NullOrEmpty catch(e){
    print(e.errorMessage);
  }
  on NumberContainException catch(e){
    print(e.errorMessage);
  }
  catch (e) {
    print(e);
  }
}
void validateCharacter(String? str){
  bool isNumberContain = false;
  if(str == null || str.isEmpty){
    throw NullOrEmpty('Null or Empty Error');
  }
  else{    
    for(int i=0; i<str.length; i++){
      try {
        num.parse(str[i]);
        isNumberContain = true;
        // print(num.parse(str[i]));// Parses a string containing a number literal into a number.
        // print(num.parse(str[i]).runtimeType); 
        // print(containNum);
      } 
      catch (e) {
        // print(e);
      }
      finally{
        if(isNumberContain){
          throw NumberContainException('Contain Number');
        }
        else{
          // print(str);
        }
      }
      
    }
  }
}
class NullOrEmpty implements Exception{
  final String errorMessage;
  NullOrEmpty(this.errorMessage);
}
class NumberContainException implements Exception{
  final String errorMessage;
  NumberContainException(this.errorMessage);
}



// By Teacher
// void main(){
//    try{
//      validateCharacter('one');
//    }
//    on NullOrEmptyException catch(e){
//      print(e.errorMessage);
//    }
//    on NumberContainException catch(e){
//      print(e.errorMessage);
//    }
// }
// void validateCharacter(String? str){
//   if(str == null || str.isEmpty){
//     throw NullOrEmptyException('String is Null or Empty');
//   }
  // else {
  //   bool isNumberContain = false;
  //   for(int i=0;i<str.length;i++){
  //     try {
  //       num.parse(str[i]);
  //       isNumberContain = true;
  //       // print(num.parse(str[i]));
  //     }
  //     catch(e){
  //     }
  //     finally{
  //       if(isNumberContain){
  //         throw NumberContainException('The String contain Number');
  //       }
  //     }
  //   }
  // }
// }
// class NullOrEmptyException implements Exception{
//   final String errorMessage;
//   NullOrEmptyException(this.errorMessage);
// }
// class NumberContainException implements Exception{
//   final String errorMessage;
//   NumberContainException(this.errorMessage);
// }


// void main(){
//   try {
//     validatecharacter('I is 25');
//   } 
//   on EmpltyData catch (e) {
//     print(e.empltyData);
//   }
//   on NullData catch (e) {
//     print(e.nullData);
//   }
//   on ContainNum catch (e) {
//     print(e.intData);
//   }
//   on NotContainNum catch (e) {
//     print(e.notContainNum);
//   }
//   catch (e) {
//     print(e.toString());
//   }
//   finally{
//     print('Done');
//   }
// }

// void validatecharacter(String st){
//   if(st == null){
//     throw NullData('Data is Null');
//   }
//   else if(st.isEmpty){ 
//     throw EmpltyData('Data is Empty');
//   }
//   else if(st.contains(RegExp("[0-9]"))){
//     throw ContainNum('Data contain number');
//   }
//   else{
//     throw NotContainNum('Data does not contain number');
//   }
// }

// class EmpltyData implements Exception{
//   final String empltyData;
//   EmpltyData(this.empltyData);
// }
// class NullData implements Exception{
//   final String nullData;
//   NullData(this.nullData);
// }
// class ContainNum implements Exception{
//   final String intData;
//   ContainNum(this.intData);
// }
// class NotContainNum implements Exception{
//   final String notContainNum;
//   NotContainNum(this.notContainNum);
// }


// void main(){
//   try {
//     validatecharacter('I is m25');
//   } 
//   on EmpltyData catch (e) {
//     print(e.empltyData);
//   }
//   on NullData catch (e) {
//     print(e.nullData);
//   }
//   on ContainNum catch (e) {
//     print(e.intData);
//   }
//   on NotContainNum catch (e) {
//     print(e.notContainNum);
//   }
//   catch (e) {
//     print(e.toString());
//   }
//   finally{
//     print('Done');
//   }
// }

// void validatecharacter(String st){
//   if(st == null){
//     throw NullData('Data is Null');
//   }
//   else if(st.isEmpty){ 
//     throw EmpltyData('Data is Empty');
//   }
//   else if(st.contains(RegExp("[0-9]"))){
//     throw ContainNum('Data contain number');
//   }
//   else{
//     throw NotContainNum('Data does not contain number');
//   }
// }

// class EmpltyData implements Exception{
//   final String empltyData;
//   EmpltyData(this.empltyData);
// }
// class NullData implements Exception{
//   final String nullData;
//   NullData(this.nullData);
// }
// class ContainNum implements Exception{
//   final String intData;
//   ContainNum(this.intData);
// }
// class NotContainNum implements Exception{
//   final String notContainNum;
//   NotContainNum(this.notContainNum);
// }


// void main(){
//   String st = 'Thiha is 123';
//   print(st.contains('T', 0));
// }
