import 'package:flutter/material.dart';
import 'package:flutter_app/demo/floating_action_button_demo.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('BlocDemo'),
      ),
      body: CounterHome(),
      floatingActionButton: CounterActionButton(),
    );
  }
}