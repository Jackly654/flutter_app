import 'package:flutter/material.dart';
import 'dart:async';

enum Option{
  A, B, C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  SimpleDialogDemoState createState() => new SimpleDialogDemoState();
}

class SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';
  Future _openSimpleDialog() async{
    final option = await showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text('SimpleDialog'),
          children: [
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: (){
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: (){
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: (){
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      }
    );

    switch(option)
    {
      case Option.A:
        setState(() {
          _choice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'B';
        });
        break;
      case Option.C:
        setState(() {
          _choice = 'C';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SimpleDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your choice is :$_choice'),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(SimpleDialogDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}