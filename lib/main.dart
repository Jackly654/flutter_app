import 'package:flutter/material.dart';
import 'modle/post.dart';
void main() =>runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: Text(
         'Hello111',
         textDirection: TextDirection.ltr,
         style: TextStyle(
           fontSize: 40.0,
           fontWeight: FontWeight.bold,
           color: Colors.black26,
         )
     ),
   );
  }
}

class Home extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
           posts[index].title,
            style: Theme.of(context).textTheme.title
          ),
          Text(
              posts[index].author,
              style: Theme.of(context).textTheme.subtitle1
          ),
          SizedBox(height: 16.0),
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GGGGG'),
        elevation: 40.0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      )
    );
  }
}