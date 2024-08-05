import 'package:flutter/foundation.dart';
import 'package:sqlite_project/model/CategoryToDo.dart';
import 'package:sqlite_project/repositories/repository.dart';

class CategoryService{

  Repository? _repository;
  CategoryService(){
    _repository = Repository();
  }

  saveCategory(CategoryToDo category)async {
    print(category);
    return await _repository?.insertData('CATEGORIES', category.categoryMap());
  }

}