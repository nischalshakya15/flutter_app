import 'package:flutter/material.dart';
import 'package:flutter_app/org/personal/todo/todo.dart';
import 'package:random_color/random_color.dart';

class ToDoListItems extends StatelessWidget {
  final ToDo toDo;

  const ToDoListItems({Key key, this.toDo}) : super(key: key);

  Color _getColor(BuildContext context) {
    return toDo.isCompleted ? Colors.black54 : RandomColor().randomColor(
        colorBrightness: ColorBrightness.dark);
  }

  TextStyle _getTextStyle() {
    if (!toDo.isCompleted)
      return null;
    else
      return TextStyle(
          color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: _getColor(context),
          child: Text(toDo.title[0]),
    ),
    title: Text(toDo.title, style: _getTextStyle()));
  }
}
