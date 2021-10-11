void main() {
  const name = 'Michael';
  const age = 54;
  describe(name, age);

  sum([45, 90, 34, 23]);
}

void describe(String name, int age) {
  print('My name is $name and I\'m $age years old');
}

double sum(List<double> numbers) {
  double sum = 0.0;
  for (var number in numbers) {
    sum += number;
  }
  print(sum);
  return sum;
}
