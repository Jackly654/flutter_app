import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  Ok,
  Cancel
}

class AlertDialogDemo extends StatefulWidget {
  @override
  AlertDialogDemoState createState() => new AlertDialogDemoState();
}

class AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

 Future _openAlertDialog() async{
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: [
            FlatButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context, Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.pop(context, Action.Ok);
              },
            ),
          ],
        );
      },
    );

    switch(action)
    {
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AlertDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your choice is : $_choice'),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
          ],
        ),

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
  void didUpdateWidget(AlertDialogDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}