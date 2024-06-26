class A {
  A() {
    print('default cons in A');
  }
  void classA() {
    print('class A');
  }
}

class B extends A {
  void classB() {
    print('class B');
  }
}

class C extends B {
  void classC() {
    print('class C');
  }
}

//3.Multiple & Hybrid not supported by Dart because it creates ambiguity.
class D extends A {
  void classD() {
    print('class D');
  }
}

void main(List<String> args) {
  B b = new B();
  b.classA();
  b.classB();

  C c = new C();
  c.classA();
  c.classB();
  c.classC();
}
