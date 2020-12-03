import 'package:flutter/material.dart';
import 'package:flutter_app/demo/state/state_management_demo.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_naigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/state/state_management_demo.dart';

void main() =>runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: NavigatorDemo(),//Home(),
      initialRoute: '/state-management',//'/about',
      routes: {
        '/': (context) => Home(),//NavigatorDemo(),
        '/about': (context) => PageJ(title : 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo1(),
      },
      //Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}


class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(

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
              Tab(icon: Icon(Icons.view_quilt)),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //Icon(Icons.local_florist, size: 128.0, color: Colors.black26,),
            ListViewDemo(),
            //Icon(Icons.change_history, size: 128.0, color: Colors.black26,),
            BasicDemo(),
            //Icon(Icons.directions_bike, size: 128.0, color: Colors.black26,),
            LayoutDemo(),
            //ViewDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      )
     );
  }
}

