import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/org/personal/todo/todo.dart';
import 'package:flutter_app/org/personal/todo/todo_list.dart';

void main() {
  runApp(MaterialApp(
      title: 'ToDo App',
      home: ToDoList(
        todos: <ToDo>[
          ToDo(title: 'Make french fry', isCompleted: true),
          ToDo(title: 'Download Darksiders III update', isCompleted: false),
          ToDo(title: 'Download Assassins Creed Odyssey for PS4', isCompleted: true),
          ToDo(title: 'Download Red Dead Redemption for PS4', isCompleted: false),
          ToDo(title: 'Download Red Dead Redemption for PS4', isCompleted: false)
        ],
      )));
}
