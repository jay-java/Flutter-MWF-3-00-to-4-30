class Data {
  int? id;
  String? name;
  int? contact;
  void showData() {
    print('id : $id name : $name contct : $contact');
  }
}

void main(List<String> args) {
  // var obj = Data();
  Data d = new Data();
  d.id = 12;
  d.name = 'dart';
  d.contact = 987654;
  d.showData();
}
