import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxItemA = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CheckboxDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
                value: _checkboxItemA,
                onChanged: (value){
              setState(() {
                _checkboxItemA = value;
              });
            },
              title: Text('Checkbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                /*Checkbox(
                  value: true,
                  onChanged: (value){
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                  activeColor: Colors.black,

                ),*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
