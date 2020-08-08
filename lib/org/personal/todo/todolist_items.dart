import 'package:flutter/material.dart';
import 'package:flutter_app/org/personal/todo/todo.dart';
import 'package:random_color/random_color.dart';

class ToDoListItems extends StatelessWidget {
  final ToDo toDo;

  const ToDoListItems({Key key, this.toDo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: RandomColor().randomColor(colorBrightness: ColorBrightness.dark),
          child: Text(toDo.title[0]),
        ),
        title: Text(toDo.title));
  }
}
