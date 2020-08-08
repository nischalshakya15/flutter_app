import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/org/personal/todo/todo_list.dart';

import 'org/personal/todo/todo.dart';

void main() {
  runApp(MaterialApp(
      title: 'ToDo App',
      home: ToDoList(
        todos: <ToDo>[
          ToDo(title: 'Make french fry', isCompleted: false),
          ToDo(title: 'Download Darksiders III update', isCompleted: false),
          ToDo(title: 'Download Assassins Creed Odyssey for PS4', isCompleted: false),
          ToDo(title: 'Download Red Dead Redemption for PS4', isCompleted: false)
        ],
      )));
}
