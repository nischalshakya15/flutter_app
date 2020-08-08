import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/org/personal/todo/todo.dart';
import 'package:flutter_app/org/personal/todo/todolist_items.dart';

class ToDoList extends StatefulWidget {
  final List<ToDo> todos;

  ToDoList({Key key, this.todos}) : super();

  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  void _handleComplete(ToDo toDo) {
    setState(() {
      widget.todos[widget.todos.indexOf(toDo)].isCompleted =
          widget.todos[widget.todos.indexOf(toDo)].isCompleted ? false : true;
    });
  }

  void _handleSave(ToDo toDo) {
    setState(() {
      widget.todos.add(toDo);
    });
  }

  Future<ToDo> createAlterDialog(BuildContext context) {
    TextEditingController toDoListController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('ToDo List'),
            content: TextField(controller: toDoListController),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('Add', style: TextStyle(color: Colors.blueAccent)),
                onPressed: () {
                  ToDo todo = ToDo(
                      title: toDoListController.text.toString(),
                      isCompleted: false);
                  Navigator.of(context).pop(todo);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo Application')),
      body: ListView(
          children: widget.todos.map((ToDo todo) {
        return ToDoListItems(toDo: todo, handleComplete: _handleComplete);
      }).toList()),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            ToDo todo = await createAlterDialog(context);
            _handleSave(todo);
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue),
    );
  }
}
