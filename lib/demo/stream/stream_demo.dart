import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StreamDemo'),
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  StreamDemoHomeState createState() => new StreamDemoHomeState();
}

class StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text(_data),
            StreamBuilder(
                stream: _streamDemo.stream,
                initialData: '....',
                builder: (context, snapshot) => Text('${snapshot.data}')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('Create a stream');

    //Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    //_streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print('Start listening on a stream');
    _streamDemoSubscription =
      _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);

    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);

    print('Initialize complete.');
  }

  void _addDataToStream() async{
    print('Add data to stream.');
    String data = await fetchData();
    //_streamDemo.add(data);
    _sinkDemo.add(data);
  }
  void _pauseStream(){
    print('Pause subscription');
    _streamDemoSubscription.pause();
  }

  void _resumeStream(){
    print('Resume subscription');
    _streamDemoSubscription.resume();
  }

  void _cancelStream(){
    print('Cancel subscription');
    _streamDemoSubscription.cancel();
  }

  void onError(error){
    print('Error : $error');
  }

  void onDone(){
    print('Done!');
  }

  void onData(String data){
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data){
    print('onDataTwo :$data');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'hello!';
    //throw 'Something wrong!?';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _streamDemo.close();
  }

  @override
  void didUpdateWidget(StreamDemoHome oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}