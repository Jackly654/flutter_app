import 'package:flutter/material.dart';
import 'counter_bloc_demo.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('BlocDemo'),
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButton(),
      ),
    );
  }
}