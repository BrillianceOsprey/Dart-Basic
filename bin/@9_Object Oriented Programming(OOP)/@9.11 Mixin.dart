// inheritance [single] [variable, method, supper consturctor]
// mixin [multiple] [variable, method]
// Mixins can't declare constructors

void main(){
  Engineer engineer = Engineer();
  engineer
  ..physics()
  ..english()
  ..maths()
  ..engineering(); // sprect operator
  // engineer.english();
  // engineer.maths();
  // engineer.physics();
  // engineer.engineering();
}
mixin Physics{
  // Physics(){};// Mixins can't declare constructors.
  void physics() => print('Studying physics');
}
class English{
  void english() => print('Studying english');
}
mixin Maths{
  void maths() => print('Studying Mathematics');
}
class Engineer with Physics, English, Maths{
  void engineering() => print('Studying engineering');
  @override
  void maths() => print('Engineering Mathermatics');
}





