import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  Ok,
  Cancel
}

class ChipDemo extends StatefulWidget {
  @override
  ChipDemoState createState() => new ChipDemoState();
}

class ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];

  String _action = 'Nothing';

  List<String> _selected = [
    /*'Apple',
    'Banana',
    'Lemon',*/
  ];

  String _choice = 'Lemon';

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

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

            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Test'),
                  avatar: CircleAvatar(
                    child: Text('test'),
                    backgroundColor: Colors.grey,
                    ),
                  ),
                Chip(
                  label: Text('Jack'),
                  avatar: CircleAvatar(
                    //child: Text('test'),
                    //backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage('https://img-static.mihoyo.com/communityweb/upload/70b5b0c9543ee5080c6ae92fd2797892.png'
                    ),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),

                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),

                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value){
                        setState(() {
                          if(_selected.contains(tag)){
                            _selected.remove(tag);
                          }
                          else{
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),

                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: ${_choice.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.black,
                      onSelected: (value){
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon',
            ];

            _selected = [];

            _choice = 'Lemon';
          });
        },
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
  void didUpdateWidget(ChipDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

