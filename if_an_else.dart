void main() {
  const netSalary = 380000;
  const expenses = 40000;

  if (netSalary > expenses) {
    print('you have saved \$${netSalary - expenses} this month');
  } else if (netSalary < expenses) {
    print('you have lost \$${expenses - netSalary} this month');
  } else {
    print('your balance hasn\'t changed');
  }
}
