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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(''),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //fetchPost();

    final post = {
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

    print('${json.encode(postModel)}');
  }

  Future<List<Post>> fetchPosts() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');

    print('stateCode: ${response.statusCode}');
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