import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/org/personal/todo/todo.dart';

import 'todolist_items.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo Application')),
      body: ListView(
          children: widget.todos.map((ToDo todo) {
        return ToDoListItems(toDo: todo, handleComplete: _handleComplete);
      }).toList()),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('button is pressed');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue),
    );
  }
}
