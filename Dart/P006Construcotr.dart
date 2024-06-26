class Dataa {
  int? id;
  String? name;
  double? value;
  // Dataa() {
  //   print('defualt cons');
  // }
  Dataa(int id, String name, double value) {
    this.id = id;
    this.name = name;
    this.value = value;
    print('para cons : $id name : $name value : $value');
  }
  Dataa.nameCons(int i, int j) {
    print('named cons ${i + j}');
  }
  void showData() {
    print('function : $id name : $name value : $value');
  }
}

void main(List<String> args) {
  Dataa d = new Dataa(1, 'dart', 3.14);
  Dataa d1 = new Dataa.nameCons(1, 2);
  d.showData();
}
