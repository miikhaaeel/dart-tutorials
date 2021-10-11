typedef Greet = String Function(String);
void main() {
  final sayHi = (String name) => 'Hi, $name';

  welcome(sayHi, 'Michael');

  print(greetEN('Miko'));
  print(greetFR('Miko'));
  print(greetESP('Miko'));
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome to the club');
}

Greet greetEN = (name) {
  return 'Hello $name';
};

Greet greetFR = (name) {
  return 'Bonjour $name';
};

Greet greetESP = (name) {
  return 'Hola $name';
};
