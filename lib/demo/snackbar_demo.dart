import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  Ok,
  Cancel
}

class SnackBarDemo extends StatefulWidget {
  @override
  SnackBarDemoState createState() => new SnackBarDemoState();
}

class SnackBarDemoState extends State<SnackBarDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet()
  {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) => BottomAppBar(
      child: Container(
        height: 90.0,
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.pause_circle_outline),
            SizedBox(width: 16.0,),
            Text('01:30 / 03:30'),
            Expanded(
              child: Text('Fix you - Coldplay', textAlign: TextAlign.right,),
            ),
          ],
        ),
      ),
    ));
  }

  Future _openModalBottomSheet() async{
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 200.0,
          child: Column(
            children : [
              ListTile(
                title: Text('Option A'),
                onTap: (){
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: (){
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: (){
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      }
    );

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: new AppBar(
        title: new Text('SnackBargDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SnackBarButton(),

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
  void didUpdateWidget(SnackBarDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open SnackBar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Preocessing'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: (){},
          ),
        ));
      },
    );
  }
}
