// Shape လို့ အမည်ရတဲ့ abstract class ထဲမှာ draw ဆိုတဲ့ abstract method ရှိမယ်။ 
// သူ့မှာ Circle , Square , Trigle ဆိုပြီး Child class 3 ခုရှိမယ် ။ main function ကနေ Shape ဆိုတဲ့ 
// variable ထဲမှာပဲ အဲ့ ၃ ခုလုံးကို assign လုပ်ပြီးထုတ်ပြလို့ရအောင် ရေးရမှာဖြစ်ပါတယ်။
// Eg.
// Shape shape = Circle();



void main(){
  draw(Circle());
  draw(Square());
  draw(Trigle());
}
void draw(Shape shape){
  shape.draw();
}
abstract class Shape{
  void draw();
}
class Circle extends Shape{
  @override
  void draw() {
    print('This is circle');
  }
}
class Square extends Shape{
  @override
  void draw() {
    print('This is square');
  }
}
class Trigle extends Shape{
  @override
  void draw() {
    print('This is trigle');
  }
}


// void main(){
//   Shape shape = Circle();
//   shape.draw();
//   Shape shape2 = Square();
//   shape2.draw();
//   Shape shape3 = Trigle();
//   shape3.draw();
// }
// abstract class Shape{
//   void draw();
// }
// class Circle extends Shape{
//   @override
//   void draw() {
//     print('This is circle');
//   }
// }
// class Square extends Shape{
//   @override
//   void draw() {
//     print('This is square');
//   }
// }
// class Trigle extends Shape{
//   @override
//   void draw() {
//     print('This is trigle');
//   }
// }
