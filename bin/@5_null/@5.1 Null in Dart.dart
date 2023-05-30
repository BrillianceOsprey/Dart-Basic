//? (nullable type) => String? name = null;
//! (nullable type => no-nullable type) => name!
//?? null aware operator

// void main(){
//  square(null);
// }
// int? square(int? num){
//   print(num ?? 'Default Value');
//   if(num != null){
//   print(num * num);
//   }
//   print(null);
// }

// void main() {
//   info(name: 'Tun Tun', age: '16');
// }

// void info({String? name, String? age}) {
//   print(name);
//   print(age);
// }

// void main() {
//   String? name;
//   print(name ?? 'Default Value _ Min Min');
// }

// void main() {
//   String? name;
//   if (name == '') {
//     print('This var is null');
//   }
//   {
//     print('Default value _Min_Min');
//   }
// }

// void main(){
//   String? name = 'Min Min';
//   print(name!.toLowerCase());
// }

void main() {
  String? name;
  print(name);
}
