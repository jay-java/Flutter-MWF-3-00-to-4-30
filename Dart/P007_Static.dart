class Student {
  int? rollNo;
  String? name;
  static String college_name = 'TOPS';
  Student(int rollNo, String name) {
    this.rollNo = rollNo;
    this.name = name;
  }
  void data() {
    print('rollno : $rollNo name : $name college_name : $college_name');
  }

  static void calling() {
    print('static in student');
  }
}

void main(List<String> args) {
  Student s1 = new Student(1, 'dart');
  s1.data();
  Student s2 = new Student(2, 'java');
  s2.data();
  Student.calling();
}
