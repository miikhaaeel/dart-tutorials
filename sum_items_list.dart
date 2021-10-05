void main() {
  var items = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var item in items) {
    sum += item;
  }
  print(sum);
}
