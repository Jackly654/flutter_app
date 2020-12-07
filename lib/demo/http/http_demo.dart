import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  HttpDemoHomeState createState() => new HttpDemoHomeState();
}

class HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        print('data: ${snapshot.data}');
        print('data: ${snapshot.connectionState}');
        //return Container();

        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: Text('loading...'),
          );
        }

        return ListView(
          children: snapshot.data.map<Widget>((item){
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //fetchPost();

    /*final post = {
      'title': 'hello',
      'description': 'nice to meet you.',
    };

    print(post['title']);
    print(post['description']);

    final postJson = json.encode(post);
    print(postJson);

    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted['title']);
    print(postJsonConverted['description']);
    print(postJsonConverted is Map);

    final postModel = Post.fromJson(postJsonConverted);
    print('title: ${postModel.title}, description: ${postModel.description}');

    print('${json.encode(postModel)}');*/

    //fetchPosts().then((value) => print(value));


  }

  Future<List<Post>> fetchPosts() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');

    //print('stateCode: ${response.statusCode}');
    if(response.statusCode == 200){
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
      .map<Post>((item) => Post.fromJson(item)).toList();

      return posts;
    }else{
      throw Exception('Failed to fetch posts.');
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(HttpDemoHome oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class Post{
  final int id;
  final String author;
  final String imageUrl;
  final String title;
  final String description;

  Post(
      this.title,
      this.description,
      this.id,
      this.author,
      this.imageUrl,
      );
  Post.fromJson(Map json)
  :
    title = json['title'],
    id = json['id'],
    author = json['author'],
    imageUrl = json['imageUrl'],
    description = json['description'];

  Map toJson() => {
    'title': title,
    'description': description,
  };
}