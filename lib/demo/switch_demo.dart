import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  SwitchDemoState createState() => new SwitchDemoState();
}

class SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('switch'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(_switchItemA ? Icons.visibility: Icons.visibility_off),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
               /* Text(_switchItamA ? '1':'2', style: TextStyle(fontSize: 32.0),),
                Switch(
                  value: _switchItamA,
                  onChanged: (value){
                    setState(() {
                      _switchItamA = value;
                    });
                  },
                ),*/
              ],
            )
          ],
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
  void didUpdateWidget(SwitchDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}