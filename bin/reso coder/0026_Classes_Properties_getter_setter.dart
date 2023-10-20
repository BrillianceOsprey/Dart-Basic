// ignore_for_file: file_names

void main(List<String> arguments) {
  final user = User(
    firstName: 'Joker',
    lastName: 'One',
    email: 'onegmail.com',
  );
  print(user.email);

  // user.email = 'asdf@';
  // print(user._email);
  // user.setEmail('one@gmail.com');
  // print(user._email);
  // print(user.fullName);
  // print(user.getFullName());
}

class User {
  final String firstName;
  final String lastName;
  String? _email;

  User({
    required this.firstName,
    required this.lastName,
    required String email,
  }) {
    this.email = email;
  }

  String get fullName => '$firstName $lastName';

  String get email => _email ?? 'Email not present';

  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    } else {
      _email = null;
    }
  }

  // String getFullName() => '$firstName $lastName';

  // void setEmail(String value) {
  //   if (value.contains('@')) {
  //     _email = value;
  //   } else {
  //     _email = null;
  //   }
  // }
}
