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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo Application')),
      body: ListView(
          children: widget.todos.map((ToDo todo) {
        return ToDoListItems(toDo: todo);
      }).toList()),
    );
  }
}
