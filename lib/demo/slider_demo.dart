import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  SliderDemoState createState() => new SliderDemoState();
}

class SliderDemoState extends State<SliderDemo> {
  double _sliderItamA = 0.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('slider'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: _sliderItamA,
                  onChanged: (value){
                    setState(() {
                      _sliderItamA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  label: '${_sliderItamA.toInt()}',
                ),
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
            ),
            SizedBox(height: 16.0,),
            Text('sliderValue: $_sliderItamA'),
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
  void didUpdateWidget(SliderDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}