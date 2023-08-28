import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: MyHomePage(),title: 'Dialog Demo',debugShowCheckedModeBanner: false,);
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{

  // Initial variable  ----> String
  String _inputText = '';
  //void show input dialog
  //AlertDialog
  void _showInputDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context){

          //manage text input field // controller.text
          TextEditingController controller = TextEditingController();

          return AlertDialog(
            title: Text('Enter Text'),
            content: TextField(
              controller: controller ,
              decoration: InputDecoration(
                hintText: 'Enter text here'
              ),
            ),
            actions:<Widget>[
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              },
                  child: Text('Cancel')
              ),
              TextButton(
                  onPressed: (){
                    setState(() {
                      _inputText = controller.text;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Save')),
            ],
          );
        }
    );
  }

  //return Scaffold
  //appBar - body (updated State text)--- Icon
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('DialogBox'),
      ) ,
      body: Center(
        child: Text(
          _inputText.isEmpty ? 'Tap icon to enter Text' : '$_inputText'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _showInputDialog,
        child: Icon(Icons.edit),
      ),
    );
  }
}