import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: Counter(),),),));

class Counter extends StatefulWidget{
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: _increment,
            child: Text('Pushed me')),
        Text('You pressed the button $_counter times'),
      ],
    );
  }
}