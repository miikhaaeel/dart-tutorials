import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print("usage: dart totals.dart <inputFile.csv>");
    exit(1);
  }

  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  for (var line in lines) {
    print(line);
  }
}
