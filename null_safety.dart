void main(List<String> args) {
  int x = 10;
  int sign = x > 0 ? 1 : -1;

  print(sign);

  int y = -2;
  int? maybeY;
  if (y > 0) {
    maybeY = y;
  }
  int value = maybeY ?? 0;
  print(value);

  const cities = <String?>['Paris', 'Lagos', 'Santorini', null];
  for (var city in cities) {
    if (city != null) {
      print(city.toUpperCase());
    } else {
      print('null value');
    }
  }
}
