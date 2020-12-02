import 'package:flutter/material.dart';
import 'dart:async';
import '../modle/post.dart';

enum Action{
  Ok,
  Cancel
}

class DataTableDemo extends StatefulWidget {
  @override
  DataTableDemoState createState() => new DataTableDemoState();
}

class DataTableDemoState extends State<DataTableDemo> {
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
        child: ListView(
          children: [
            DataTable(
              columns: [
                DataColumn(
                  label: Container(
                    width: 150.0,
                    child: Text('Title'),
                  ),
                ),
                DataColumn(
                  label: Text('Author'),
                ),
                DataColumn(
                  label: Text('Image'),
                ),
              ],
              rows: posts.map((post) => DataRow(
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl)),
                  ]
              )).toList(),

              /*
              *[
                DataRow(cells: [
                  DataCell(Text('hello ~')),
                  DataCell(Text('jack ~')),
                  ]
                ),
                DataRow(cells: [
                  DataCell(Text('halo ~')),
                  DataCell(Text('jack2 ~')),
                  ]
                ),
                DataRow(cells: [
                  DataCell(Text('您好 ~')),
                  DataCell(Text('jack3 ~')),
                  ]
                ),
              ],
              * */

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
  void didUpdateWidget(DataTableDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

