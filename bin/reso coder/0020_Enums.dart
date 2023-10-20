// ignore_for_file: file_names

enum AccountType { free, premium, vip }

void main(List<String> arguments) {
  final userAccountType = AccountType.vip;
  print(userAccountType.index);
  AccountType.values[1];

  switch (userAccountType) {
    case AccountType.free:
      print('0 USD');
      break;
    case AccountType.premium:
      print('20 USD');
      break;
    default:
      print('40 USD');
      break;
  }
}
