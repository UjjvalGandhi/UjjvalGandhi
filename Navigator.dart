import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FirstPage(),));

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed:(){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondPage())
              );
            },
            child: Text('Page 2')),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed:(){
              Navigator.pop(context);
            },
            child: Text('Page 1')),
      ),
    );
  }
}