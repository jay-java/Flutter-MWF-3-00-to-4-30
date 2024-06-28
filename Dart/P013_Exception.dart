import 'dart:html';
import 'dart:io';

class Divide {
  void division() {
    print('enter a = ');
    int a = int.parse(stdin.readLineSync()!);
    print('enter b = ');
    int b = int.parse(stdin.readLineSync()!);
    if (b > 0) {
      int c = a ~/ b;
      print('c = $c');
    } else {
      throw IntegerDivisionByZeroException();
    }
  }
}

void main(List<String> args) {
  try {
    Divide d = new Divide();
    d.division();
  } on IntegerDivisionByZeroException {}
  // try {
  //   print('enter a = ');
  //   int a = int.parse(stdin.readLineSync()!);
  //   print('enter b = ');
  //   int b = int.parse(stdin.readLineSync()!);
  //   int c = a ~/ b;
  //   print('c = $c');
  //   exit(4);
  // } on IntegerDivisionByZeroException {
  //   print('number cannot divide by zero');
  // } on FormatException {
  //   print('demoninator should be numeric value');
  // } finally {
  //   print('this will execute everytime');
  // }
}
