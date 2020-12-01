import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  Ok,
  Cancel
}

class ExpansionPanelItem{
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
   this.headerText,
   this.body,
   this.isExpanded,
});
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  ExpansionPanelDemoState createState() => new ExpansionPanelDemoState();
}

class ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  //bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SnackBargDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded){
                setState(() {
                  //_isExpanded = !isExpanded;
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItems.map((ExpansionPanelItem item){
                return ExpansionPanel(
                  isExpanded: item.isExpanded,
                  body: item.body,
                  headerBuilder:(BuildContext context, bool isExpanded){
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),

      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel B'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel C'),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(ExpansionPanelDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open SnackBar'),
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Preocessing'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: (){},
          ),
        ));
      },
    );
  }
}
