import 'package:flutter/material.dart';
import 'package:sqlite_project/model/ToDo.dart';
import 'package:sqlite_project/services/category_service.dart';
import 'package:intl/intl.dart';
import 'package:sqlite_project/services/todo_service.dart';
class ToDoScreeen extends StatefulWidget {
  const ToDoScreeen({super.key});

  @override
  State<ToDoScreeen> createState() => _ToDoScreeenState();
}

class _ToDoScreeenState extends State<ToDoScreeen> {
  var _toDoTitleController = TextEditingController();

  var _toDoDescriptionController = TextEditingController();

  var _toDoDateController = TextEditingController();

  var _selectedValue;

  List<DropdownMenuItem> _categories = [];

  void initState(){
    super.initState();
    _loadCategories();
  }

  _loadCategories() async{
    var _categoryService = CategoryService();
    var categories = await _categoryService.readCategories();
    categories.forEach((category){
      setState(() {
        _categories.add(
            DropdownMenuItem(
              child: Text(category['name']),
              value: category['name'],));
      });
    });
  }

  DateTime _dateTime = DateTime.now();

  _selectedToDoDate(BuildContext context)async{
    var _pickDate = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050));

    if(_pickDate!= null){
      setState(() {
        _dateTime = _pickDate;
        _toDoDateController.text = DateFormat('dd-MM-yyyy').format(_pickDate);
      });
    }


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _toDoTitleController,
              decoration: InputDecoration(
                labelText: 'Title',
                hintText: 'Write ToDo title'
              ),
            ),
            TextField(
              controller: _toDoDescriptionController,
              decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Description'
              ),
            ),
            TextField(
              controller: _toDoDateController,
              decoration: InputDecoration(
                  labelText: 'Date',
                  hintText: 'Date',
                prefixIcon: InkWell(
                  onTap: (){
                    _selectedToDoDate(context);
                  },
                  child: Icon(Icons.calendar_today),
                )
              ),
            ),
            DropdownButtonFormField(
                value: _selectedValue,
                items: _categories,
                hint: Text('Category'),
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: ()async{
              var todo = ToDo();
              todo.title  = _toDoTitleController.text;
              todo.description = _toDoDescriptionController.text;
              todo.isFinished = 0;
              todo.category = _selectedValue.toString();
              todo.todoDate = _toDoDateController.text;
              print('Todo object  --->>> $todo');
              var _todoService  = TodoService();
              var res = await _todoService.saveTodo(todo);
              print('res -->> $res');

            },child: Text('Save',style: TextStyle(fontSize: 25),))
          ],
        ),
      ),
    );
  }
}
