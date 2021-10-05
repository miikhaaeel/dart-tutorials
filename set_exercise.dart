void main() {
  const a = {4, 3};
  const b = {7, 4};
  var r = a.elementAt(1);
  print(r);

  var c = a.difference(b);
  var d = b.difference(a);
  final e = c.union(d);

  print(e);

  var sum = 0;
  for (var value in e) {
    sum += value;
  }
  print(sum);

  //alternative soluution
  final f = a.union(b).difference(a.intersection(b));
  print(f);
}
