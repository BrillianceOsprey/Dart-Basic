Future<void> main(List<String> arguments) async {
  final myPeriodStream = Stream.periodic(Duration(seconds: 1));
  final subscription = myPeriodStream.listen((event) {
    print('A second has passed');
  });
  await Future.delayed(Duration(seconds: 3));
  subscription.cancel();
}
