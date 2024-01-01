void main() {
  // String h = "Hello/Mg/Tun";
  // print(h.split('/').last);
  // print(h.split('/').first);
  // print(h.split('/').toList());
  // print(h.split('/').take(1));

  var string = "Hello world 1234";
  // print(string);
  // print(string.split(" "));
  // string.split('').join('-') == string;
  // print(string);
  var splitString = string.split(' ')[0];
  // var splitString = string.split(' ')[0];
  print(splitString);

  final planetsByMass = <double, String>{
    0.06: 'Mercury',
    0.81: 'Venus',
    0.11: 'Mars'
  };
  final joinedNames = planetsByMass.values.join('-');
  print(joinedNames);
}
