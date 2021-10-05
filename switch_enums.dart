enum Medal {
  gold,
  silver,
  bronze,
  noMedal,
}
void main() {
  const medal = Medal.noMedal;
  switch (medal) {
    case Medal.gold:
      print('gold');
      break;
    case Medal.silver:
      print('silver');
      break;
    case Medal.bronze:
      print('bronze');
      break;
    case Medal.noMedal:
      print('no medal, try again');
      break;
  }
}
