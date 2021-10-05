void main() {
  var cities = ['london', 'france', 'toronto'];
  print(cities[1]);
  for (var city in cities) {
    print(city);
  }
  Set countries = {'togo', 'congo', 'kenya'};
  countries.add('algeria');
  print(countries);
  print(countries.length);

  Map<String, dynamic> person = {
    'name': 'Mike',
    'age': 25,
    'height': 1.54,
  };
  var age = person['age'];
  print(age);
  person['boy'] = true;
  print(person);
}
