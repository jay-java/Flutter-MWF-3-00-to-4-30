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

  List<CategoryToDo> _categoryList = [];

  var _editCategoryNameController = TextEditingController();
  var _editCategoryDescriptionController = TextEditingController();

  @override
  void initState(){
    super.initState();
    getAllCategories();
  }

  getAllCategories() async {
    // print('function called');
    var categories = await _categoryService.readCategories();
    // print('categories -->>  $categories');
    // print(categories.runtimeType);
    // print(categories[0]['name']);
    categories.forEach((cat){
      setState(() {
        var c = CategoryToDo();
        c.id = cat['id'];
        c.name = cat['name'];
        c.description = cat['description'];
        _categoryList.add(c);
      });
    });
  }

  var category;

  _editCategory(BuildContext context,categoryId) async {
    category = await _categoryService.readCategoryById(categoryId);
    setState(() {
      _editCategoryNameController.text = category[0]['name'] ?? 'No name';
      _editCategoryDescriptionController.text  = category[0]['description'] ?? 'no desc';
    });
    _editFormDialogue(context);
  }

  _showFormDialogue(BuildContext context) {
    return showDialog(
        context: context,
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
                    Navigator.pop(context);
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
                      hintText: 'Enter category',
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

  _editFormDialogue(BuildContext context) {
    return showDialog(
        context: context,
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
                  Navigator.pop(context);
                },
                child: Text('Update',style: TextStyle(color: Colors.white),),
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
            title: Text('Edit Categories Form'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _editCategoryNameController,
                    decoration: InputDecoration(
                      hintText: 'Enter catagory',
                      label: Text('Category'),
                    ),
                  ),
                  TextField(
                    controller: _editCategoryDescriptionController,
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
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 8.0,left: 10.0,right: 10.0),
          child: Card(
            elevation: 8.0,
            child: ListTile(
              leading: IconButton(icon: Icon(Icons.edit),onPressed: (){
                _editCategory(context, _categoryList[index].id);
              }),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_categoryList[index].id.toString()),
                  Text(_categoryList[index].name.toString()),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
                ],
              ),
              subtitle: Text(_categoryList[index].description.toString()),
            ),
          ),
        );
      },
      itemCount: _categoryList.length,
      ),
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
