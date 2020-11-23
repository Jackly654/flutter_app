import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
void main() =>runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}


class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigration button is pressed.'),
            ),
         title: Text('GGGGG'),
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
            ),
         ],
          elevation: 40.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black26,),
            Icon(Icons.change_history, size: 128.0, color: Colors.black26,),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black26,),
          ],
        ),
        drawer: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('this is drawer test')
            ],
          )
        )
      )
     );
  }
}

