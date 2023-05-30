// Create an interger function named order which has optional positional 3 String parameters
//(chicken, cola, potato).Customer must order the chicken and others are optional.
//If customer order all 3 items ,the customer will get 30% discount.
//[chicken =  2000, cola = 1000, potato = 500]
// int return ပြန်တဲ့ order ဆိုတဲ့ function 1 ခု မှာ  String data type နဲ့ (chicken, cola ,potato) ဆိုတဲ့
//positional parameter ၃ ခု ပါမယ်။ customer က chicken ကို မဖြစ်မနေမှာရမှာဖြစ်ပြီး ကျန်တာတွေကတော့ မမှာလဲရပါတယ်။
//customer ကသာ ၃ ခုလုံး မှာမယ်ဆို discount ၃၀% ရမယ်။ [chicken =  2000, cola = 1000, potato = 500]

// void main(){
//   var price = market(chicken: '2000', potato: '500', cola: '1000');
//   print(price);
// }
// int market({required String? chicken, String? cola, String? potato}){
//   int chickentPrice = int.parse(chicken!);
//   int colaPrice = int.parse(cola?? '0');
//   int potatoPrice = int.parse(potato?? '0');
//   int totalSum = chickentPrice + colaPrice + potatoPrice;
//   if(colaPrice != 0 && potatoPrice != 0){
//     return totalSum - (totalSum*0.3).toInt();
//   }
//   else{
//     return totalSum.toInt();
//   }
// }

// int totalSum = int.parse(chicken)+int.parse(cola?? '0')+int.parse(potato?? '0');

void main() {
  var total = order(chicken: '5000', burger: '4000', pepsi: '2000');
  print(total);
}

int order({required String? chicken, String? burger, String? pepsi}) {
  int chickenAmt = int.parse(chicken!);
  int burgerAmt = int.parse(burger ?? '0');
  int pepsiAmt = int.parse(pepsi ?? '0');
  int totalAmt = chickenAmt + burgerAmt + pepsiAmt;
  if (burgerAmt != 0 && pepsiAmt != 0) {
    return totalAmt - (totalAmt * 0.3).toInt();
  } else {
    return totalAmt;
  }
}
