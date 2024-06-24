void main(List<String> args) {
  int i = 10, j = 20;
  if (i > j) {
    print('i is greater than j');
  } else {
    print('j is greater than i');
  }

  int age = 30;
  if (age > 18) {
    if (age < 60) {
      print('eligible');
    } else {
      print('age is greater than 18 but not less than 60');
    }
  } else {
    print('age is less than 18');
  }

  int m = 45;
  if (m < 35) {
    print('fail');
  } else if (m >= 35 && m <= 50) {
    print('D grade');
  } else if (m >= 51 && m <= 70) {
    print('C grade');
  } else if (m >= 71 && m <= 80) {
    print('B grade');
  } else if (m >= 81 && m <= 90) {
    print('A grade');
  } else if (m >= 91 && m <= 100) {
    print('A+ grade');
  } else {
    print('invalid marks');
  }

  print('1.English , 2.Hindi , 3. Gujarati');
  int c = 1;
  switch (c) {
    case 1:
      print('English');
      break;
    case 2:
      print('HIndi');
      break;
    case 3:
      print('gujarati');
      break;
    default:
      print('invalid');
  }
}
