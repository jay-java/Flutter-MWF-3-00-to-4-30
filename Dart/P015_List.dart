class Student {
  int? id;
  String? name;
  int? contact;
  Student(int id, String name, int contact) {
    this.id = id;
    this.name = name;
    this.contact = contact;
  }
  @override
  String toString() {
    return 'id : $id name : $name contact : $contact';
  }
}

//<generics>
void main(List<String> args) {
  // List<int> listl = new List.of([1,2,3,4,'dart']);
  var list = [1, 2, 3.14, false, 'dart', 'r'];
  list.add(123);
  print(list);
  list.remove(3.14);
  print(list);

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (var i in list) {
    print(i);
  }
  list.forEach((element) {
    print(element);
  });

  list.add(243);
  print(list[3]);

  var list1 = [10, 20, 30, 40];
  list.add(list1);
  print(list);

  Student s1 = new Student(1, 'dart', 987654);
  Student s2 = new Student(2, 'java', 987654);
  Student s3 = new Student(3, 'kotlin', 987654);
  Student s4 = new Student(4, 'python', 987654);

  List<Student> sLIst = List.of([s1, s2, s3, s4, s1]);
  print(sLIst);

  for (var s in sLIst) {
    print(s);
  }
}
