import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: MyHomePage(),);
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  String _inputText = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter Text here"
          ),
          onChanged: (value){
            setState(() {
              _inputText = value;
            }
            );
          },
        ),
      ),
      bottomSheet: Container(alignment: Alignment.center,height: 70,color: Colors.blue,
      child: Text('$_inputText',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
    );
  }

}