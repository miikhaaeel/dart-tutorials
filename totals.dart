import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print("usage: dart totals.dart <inputFile.csv>");
    exit(1);
  }

  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  lines.removeAt(0);
  var totalDuration = 0.0;
  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] == previousTotal + duration;
    }
    totalDuration += duration;
  }

  for (var entry in totalDurationByTag.entries) {
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    final durationFormatted = entry.value.toStringAsFixed(1);
    print('$tag: ${durationFormatted}h');
  }

  print('Total duration: ${totalDuration.toStringAsFixed(1)}');
}
