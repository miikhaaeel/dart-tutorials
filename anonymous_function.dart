typedef Greet = String Function(String);
void main() {
  final sayHi = (String name) => 'Hi, $name';

  welcome(sayHi, 'Michael');

  print(greetEN('Miko'));
  print(greetFR('Miko'));
  print(greetESP('Miko'));

  const multiplier = 10;
  const list = [1, 2, 3, 4, 5];
  final result = list.map((x) => x * multiplier); //closure
  print(result);

  list.forEach((element) {
    print(element);
  });

  list.forEach(print); //why? Dart will implicitly pass in each values in list to print
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
