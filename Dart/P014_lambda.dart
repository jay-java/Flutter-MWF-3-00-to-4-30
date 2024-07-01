void addition(int a, int b) {
  print(a + b);
}

void square(int num) {
  print(num * num);
}

void main(List<String> args) {
  addition(1, 2);

  Function addTwoNumbers = (int a, int b) {
    print(a + b);
  };

  addTwoNumbers(1, 2);

  Function squareOfNUm = (int num) {
    print(num * num);
  };

  squareOfNUm(2);

  Function sq = (int num) => print(num * num);

  sq(3);
}
