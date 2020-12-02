import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../modle/post.dart';


class CardDemo extends StatefulWidget {
  @override
  CardDemoState createState() => new CardDemoState();
}

class CardDemoState extends State<CardDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PaginatedDataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map((post) => Card(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16/9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.network(
                      post.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(post.imageUrl),
                  ),
                  title: Text(post.title),
                  subtitle: Text(post.author),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(post.description, maxLines: 2, overflow: TextOverflow.ellipsis,),
                ),
                ButtonBar(
                  children: [
                    FlatButton(
                      child: Text('Like'.toUpperCase()),
                      onPressed: (){},
                    ),

                    FlatButton(
                      child: Text('Read'.toUpperCase()),
                      onPressed: (){},
                    ),
                  ],
                )
              ],
            ),
          ),).toList(),
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
  void didUpdateWidget(CardDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: impleme
  }
}