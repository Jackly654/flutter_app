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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StreamDemoHome'),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('Create a stream');

    Stream<String> _streamDemo = Stream.fromFuture(fetchData());

    print('Start listening on a stream');
    _streamDemo.listen(onData, onError: onError, onDone: onDone);

    print('Initialize complete.');
  }

  void onError(error){
    print('Error : $error');
  }

  void onDone(){
    print('Done!');
  }

  void onData(String data){
    print('$data');
  }
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    //return 'hello!';
    throw 'Something wrong!?';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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