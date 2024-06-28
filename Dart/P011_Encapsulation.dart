class Laptop {
  int? _ram;
  String? _model;
  double? _price;
  Laptop() {}
  Laptop.named(int ram, String model, double price) {
    this._ram = ram;
    this._model = model;
    this._price = price;
  }
  void setRam(int ram) {
    this._ram = ram;
  }

  int? getRam() {
    return _ram;
  }

  void setModel(String model) {
    this._model = model;
  }

  String? getModel() {
    return _model;
  }

  void setPrice(double price) {
    this._price = price;
  }

  double? getPrice() {
    return _price;
  }

  @override
  String toString() {
    return 'ram : $_ram model : $_model price : $_price';
  }
}

void main(List<String> args) {
  Laptop l1 = new Laptop();
  l1.setRam(12);
  l1.setModel('dell');
  l1.setPrice(49999.99);
  print(l1.getRam());
  print(l1.getModel());
  print(l1.getPrice());

  Laptop l2 = new Laptop.named(16, 'LENOVO', 45666.99);
  print(l2);
}
