import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_project/screens/home_screen.dart';

import '../model/CategoryToDo.dart';
import '../services/category_service.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  TextEditingController _categoryNameController = TextEditingController();
  TextEditingController _categoryDescriptionController = TextEditingController();

  var _category = CategoryToDo();
  var _categoryService = CategoryService();

  _showFormDialogue(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: [
              OutlinedButton(
                  onPressed: () async{
                    _category.name = _categoryNameController.text;
                    _category.description = _categoryDescriptionController.text;
                    print(_category);
                    var res = _categoryService.saveCategory(_category);
                    print(res);
                  },
                  child: Text('Add',style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    // foregroundColor: MaterialStateProperty.all(Colors.green),
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                  ),
              ),
              OutlinedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Cancel',style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  // foregroundColor: MaterialStateProperty.all(Colors.green),
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
              ),
            ],
            title: Text('Categories Form'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _categoryNameController,
                    decoration: InputDecoration(
                      hintText: 'Enter catagory',
                      label: Text('Category'),
                    ),
                  ),
                  TextField(
                    controller: _categoryDescriptionController,
                    decoration: InputDecoration(
                      hintText: 'Description',
                      label: Text('Description'),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
          },
        ),
        title: Text('Categories'),
        backgroundColor: Colors.green,
      ),
      // body: ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialogue(context);
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
