void main() {
  for (int i = 1; i <= 18; i++) {
    if (i % 3 == 0 && i % 4 == 0) {
      print('fizz buzz');
      break;
    }
    if (i % 3 == 0) {
      print('fizz');
      continue;
    }
    if (i % 4 == 0) {
      print('buzz');
      continue;
    }
    {
      print(i);
    }
  }
  print('Done');
}
