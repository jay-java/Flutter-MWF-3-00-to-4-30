class Parent {
  void call(int i) {
    print('i in parent : $i');
  }
}

class Child extends Parent {
  void call(int i) {
    super.call(12);
    print('i in child : $i');
  }

  void calling() {
    print('calling in child');
  }
}

void main(List<String> args) {
  Child c = new Child();
  c.call(12);
  c.calling();
}
