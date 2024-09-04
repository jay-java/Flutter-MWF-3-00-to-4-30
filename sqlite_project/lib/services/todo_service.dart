import 'package:sqlite_project/model/ToDo.dart';
import 'package:sqlite_project/repositories/repository.dart';

class TodoService{
  Repository? _repository;

  TodoService(){
    _repository = Repository();
  }

  saveTodo(ToDo todo) async{
    return await _repository?.insertData('TODO', todo.todoMap());
  }

}