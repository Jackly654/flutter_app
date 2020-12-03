import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateManagementDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ScopedModel(
      model: CounterModel(),

      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        //body: CounterWrapper(_count, _increaseCount),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) =>FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: model.increaseCount,
        ),
        ),
      ),
    );
  }
}

/*
class StateManagementDemo extends StatefulWidget {
  @override
  StateManagementDemoState createState() => new StateManagementDemoState();
}

class StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  void _increaseCount(){
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
        ),
        //body: CounterWrapper(_count, _increaseCount),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              _count += 1;
            });
          },
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
  void didUpdateWidget(StateManagementDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
*/

class CounterWrapper extends StatelessWidget {
 /* final int count;
  final VoidCallback increaseCount;

  CounterWrapper(this.count, this.increaseCount);*/

  @override
  Widget build(BuildContext context) {
    return Center(
      //child: Counter(count, increaseCount),
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget{
  /*final int count;
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
        label: Text('${model.count}'),
        onPressed: model.increaseCount,
      ),
    );

    /*final int count = CounterProvider.of(context).count;
    final VoidCallback increaseCount = CounterProvider.of(context).increaseCount;
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );*/

    /*Center(
      child: ActionChip(
        label: Text('$count'),
        onPressed: increaseCount,
      ),
    );*/
  }

}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child}) :super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNo
    return false;
  }
}

class CounterModel extends Model{
  int _count = 0;
  int get count => _count;

  void increaseCount(){
    _count += 1;
    notifyListeners();
  }
}