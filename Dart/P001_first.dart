import 'dart:io';

//byte,short,int,long->int
//float,double,->double
//boolean->bool
//String,char->string
// array ->list,set
//map
void main(List<String> args) {
  print('hello dart');
  int i = 1, j = 2;
  print('i = $i j = $j');
  print('addition of i and j = ${i + j}');
  String s = 'name';
  print(s);
  bool flag = true;
  print(flag);
  double d = 3.14;
  print(d);
  int jay = 12;
  String? name = null;
  print('enter a = ');
  int a = int.parse(stdin.readLineSync()!);
  print('enter b = ');
  int b = int.parse(stdin.readLineSync()!);
  print(a + b);
}
