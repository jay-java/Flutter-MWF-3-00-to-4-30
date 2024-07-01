void main(List<String> args) {
  Map<String, String> map = Map();
  var map1 = {1: 'c', 2: 'c++ ', 'java': 3, 3.14: 'dart', 5: 'dart'};
  print(map1);

  map1.update(2, (value) => 'dart');
  print(map1);

  map1.forEach((key, value) {
    print('key : $key value : $value');
  });

  for (var i in map1.keys) {
    print('key : $i');
  }

  print(map1.entries);
}
