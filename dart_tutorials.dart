void main() {
  double tempFarenheit = 56;
  int value = 3;
  String pizza = 'pizza'.toUpperCase();
  String pasta = 'pasta';
  String title = 'Dart course';

  print('The temperature is ${tempFarenheit}C');
  print('$value + $value makes ${value + value}');
  print('I like $pizza and $pasta');

  print(title);
  print(title.toUpperCase());
  print(title.toLowerCase());

  bool one = title.contains('course');
  print(one);

  double convertedTemp = (tempFarenheit - 32) / 1.8;
  print('${tempFarenheit}F = ${convertedTemp.toStringAsFixed(1)}C');

  ticketPrice(78);
}

String? ticketPrice(int age) {
  if (age < 16) {
    print('''
    Junior ticket.
    Price is \$8
    ''');
  } else if (age >= 60) {
    print('''
    Senior ticket.
    Price is \$6
    ''');
  } else {
    print('''
    Regular ticket.
    Price is \$10
    ''');
  }
  print('Enjoy your visit');
}
