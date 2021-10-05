import 'dart:io';

void main() {
  stdout.write('enter number of credit unit: ');
  final creditUnit = stdin.readLineSync()!;

  stdout.write('enter grade: ');
  final grade = stdin.readLineSync()!;


  int? gradeValue;
  if (grade.contains("A")) {
    gradeValue = 5;
  } else if (grade.contains("B")) {
    gradeValue = 4;
  } else if (grade.contains("C")) {
    gradeValue = 3;
  } else if (grade.contains("D")) {
    gradeValue = 2;
  } else if (grade.contains("E")) {
    gradeValue = 1;
  } else if (grade.contains("F")) {
    gradeValue = 0;
  } else {
    print('You entered an invalid input');
  }

  int totalCreditPoints = gradeValue! * int.parse(creditUnit);
  double gpa = totalCreditPoints / int.parse(creditUnit);

  print('Credit Unit: ' + creditUnit);
  print('Grade: ' + grade);
  print('Total Credit Points: ' + totalCreditPoints.toString());
  print('GPA: ' + gpa.toString());
}
