void main() {
  const addBlue = false;
  const addRed = true;
  const extraColors = ['pink', 'purple', 'orange'];
  const addExtraColors = true;
  final colors = [
    'green',
    'amber',
    if (addBlue) 'blue', //collection if
    if (addRed) 'red',
    for (var color in extraColors) color, //collection for
    if (addExtraColors) extraColors, //this will add a list
    ...extraColors //spread operator will spread the list into individualitems
  ];
  print(colors);
}
