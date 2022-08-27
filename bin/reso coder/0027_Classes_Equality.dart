// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
  final user1 = User(
    firstName: 'Joker',
    lastName: 'One',
  );

  final user2 = User(
    firstName: 'Joker',
    lastName: 'One',
  );
  print(user1 == user2);
  print(user1.hashCode);
  print(user2.hashCode);
}

class User {
  final String firstName;
  final String lastName;

  const User({
    required this.firstName,
    required this.lastName,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;
}
