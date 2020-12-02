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
  int _sortColumnIndex;
  bool _sortAscending = true;
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: new AppBar(
        title: new Text('DataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              //onSelectAll: (bool value){}, 定制全选动作
              columns: [
                DataColumn(
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAscending = ascending;

                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  },
                  label: Container(
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
              rows: posts.map((post) =>
                  DataRow(
                      selected: post.selected,
                      onSelectChanged: (bool value){
                        setState(() {
                          if(post.selected != value)
                          {
                            post.selected = value;
                          }
                        });
                      },
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
    // TODO: impleme
  }
}