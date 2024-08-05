import 'dart:ffi';

class CategoryToDo {
  int? id;
  String? name;
  String? description;

  void setId(int id){
    this.id=id;
  }

  int? getId(){
    return id;
  }

  void setName(String name) {
    this.name = name;
  }

  String? getName() {
    return name;
  }

  void setDesciprion(String description) {
    this.description = description;
  }

  String? getDescription() {
    return description;
  }

  @override
  String toString() {
    return 'Category{_name: $name, _description: $description}';
  }

  categoryMap(){
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['name'] = name;
    mapping['description'] = description;
    return mapping;
  }
}
