import 'package:flutter/material.dart';
import 'package:flutter_app/org/personal/todo/todo.dart';
import 'package:random_color/random_color.dart';

typedef void HandleCompleteCallback(ToDo toDo);

class ToDoListItems extends StatelessWidget {
  final ToDo toDo;
  final HandleCompleteCallback handleComplete;

  const ToDoListItems({Key key, this.toDo, this.handleComplete})
      : super(key: key);

  Color _getColor(BuildContext context) {
    return toDo.isCompleted
        ? Colors.black54
        : Colors.redAccent;
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
        onTap: () {
          handleComplete(toDo);
        },
        leading: CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: _getColor(context),
          child: Text(toDo.title[0]),
        ),
        title: Text(toDo.title, style: _getTextStyle()));
  }
}
