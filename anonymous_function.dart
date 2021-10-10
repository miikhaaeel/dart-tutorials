void main() {
  final sayHi = (String name) => 'Hi, $name';

  welcome((p0) => sayHi('Michael'), 'Michael');
}

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print('Welcome to the club');
}
