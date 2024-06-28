final class User {
  final int id = 12;
  final void change() {
    id++;
    print('id : $id');
  }
}

class Calling extends User {
  void change() {
    print('change in calling class');
  }
}

void main(List<String> args) {
  User u = new User();
  u.change();
}
