import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RxDartDemo'),
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  RxDartDemoHomeState createState() => new RxDartDemoHomeState();
}

class RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _textFieldSubject;
  @override
  Widget build(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value){
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value){
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject
        //.map((event) => 'item: $event')
        //.where((event) => event.length > 1)
        .debounceTime(Duration(milliseconds: 2000))
        .listen((data) => print(data));


    //Stream.fromIterable(['hello', '你好']).throttleTime(Duration(seconds: 3)).listen(print);
    //Stream.periodic(Duration(seconds: 3), (x) => x.toString()).listen(print);
    /*Observable<String> _observale = Observerable(Stream.fromIterable(['hello', '你好']));

    _observale.le*/

    //PublishSubject<String> _subject = PublishSubject<String>();
    //BehaviorSubject<String> _subject = BehaviorSubject<String>();

    /*ReplaySubject<String> _subject = ReplaySubject<String>();

    _subject.add('event');
    _subject.add('event hello');
    _subject.add('hi event hello');
    _subject.listen((data) => print('listen 1 : $data'));
    _subject.listen((data) => print('listen 2 : ${data.toUpperCase()}'));

    _subject.close();*/
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  void didUpdateWidget(RxDartDemoHome oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}