// showIndexOfTen လို့အမည်ရတဲ့ function ၁ ခုမှာ Parameter ၃ ခုပါမယ်။ ပထမ ၁ ခုက List 1 ခုလက်ခံမှာဖြစ်ပြီး 
// ဒုတိယ ၁ခု က onData ဆိုတဲ့ Function 1 ခုဖြစ်ပြီး String parameter ၁ ခု ပါမယ်။ တတိယ ၁ ခုကတော့ onError 
// ဆိုတဲ့ Function ၁ခုဖြစ်ပြီး String parameter ၁ခုပါမယ်။ Function ရဲ့ အလုပ်ကတော့ List ရဲ့ index 10 
// ကိုထုတ်ပြရမှာဖြစ်ပြီး error မတက်ရင် onData ကိုခေါ်မယ်။ runTime error ၁ ခုခု တက်ခဲ့ရင် onErrror ကိုခေါ် ရပါမယ်။
// Result : 
// showIndexOfTen(
//   list : [],
//   onData : (data) { },
//   onError : (error) {},
// );



void main(){
  showIndexOfTen(
    list: [1,2,3,4,5,6,7,8,9,0, 11], 
    onData: (data) => print(data), 
    onError: (error) => print(error)
  );
}
void showIndexOfTen({required List list, required Function(String data) onData, required Function(String error) onError}){
  try {
    onData(list[10].toString());
  } 
  catch (e) {
    onError(e.toString());
  }
}



// void main(){
//   List list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   showIndexOfTen(
//     list, 
//     (data) => print(data),
//     (error) => print(error)
//   );
// }
// void showIndexOfTen(List list, Function(String firstCheck) noData, Function(String secondCheck) onError){
//   try {
//     noData(list[10].toString());} 
//   catch (e) {
//     onError(e.toString());  }
// }



//by Kyaw Thet
// void main() {
// showIndexOf10(
// list: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
// onData: (data) {
// print("Index 10 is $data.");
// },
// onError: (error) {
// print("Error -> $error.");
// },
// );
// }
// showIndexOf10({
// required List<dynamic> list,
// required Function(String data) onData,
// required Function(String error) onError,
// }) {
// try {
// return onData(list[10].toString());
// } catch (e) {
// return onError(e.toString());
// }
// }

