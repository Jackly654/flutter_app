import 'package:flutter/material.dart';
import 'dart:async';
import '../modle/post.dart';

enum Action{
  Ok,
  Cancel
}

class PostDataSource extends DataTableSource{
  final List<Post> _posts = posts;
  int _selectedCount = 0;
  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ]
    );
  }

  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b){
      if(!ascending){
        final c = a;
        a = b;
        b = c;
      }

      final aValue = getField(a);
      final bValue = getField(b);

      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  PaginatedDataTableDemoState createState() => new PaginatedDataTableDemoState();
}

class PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;
  final PostDataSource _postDataSource = PostDataSource();
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: new AppBar(
        title: new Text('PaginatedDataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            PaginatedDataTable(
              rowsPerPage: 5,
              header: Text('Post'),
              source: _postDataSource,
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              //onSelectAll: (bool value){}, 定制全选动作
              columns: [
                DataColumn(
                  onSort: (int conlumnIndex, bool ascending) {

                    _postDataSource._sort((post) => post.title.length, ascending);

                    setState(() {
                      _sortColumnIndex = conlumnIndex;
                      _sortAscending = ascending;
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
  void didUpdateWidget(PaginatedDataTableDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: impleme
  }
}