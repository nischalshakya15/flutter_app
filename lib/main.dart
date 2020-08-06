import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;

  CounterDisplay({this.count});

  Widget build(BuildContext context) {
    return Text('Count:  $count');
  }
}

class CounterIncrementor extends StatelessWidget {

  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  Widget build(BuildContext context){
    return RaisedButton(onPressed: onPressed, child: Text('Increment'));
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        CounterDisplay(count: _counter)
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(title: 'CounterDemo', home: Counter()));
}
