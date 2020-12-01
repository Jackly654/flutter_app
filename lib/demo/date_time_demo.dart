import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  DateTimeDemoState createState() => new DateTimeDemoState();
}

class DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedData = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 5);

  Future<void> _selectDate() async{
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedData,
      firstDate: DateTime(1990),
      lastDate: DateTime(2100),
    );

    if(date == null) return;
    setState(() {
      selectedData = date;
    });
  }

  Future<void> _selectTime() async{
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if(time == null) return;

    setState(() {
      selectedTime = time;
    });
  }
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
               InkWell(
                 onTap: _selectDate,
                 child: Row(
                   children: [
                     Text(DateFormat.yMMMd().format(selectedData)),
                     Icon(Icons.arrow_drop_down)
                   ],
                 ),
               ),

                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: [
                      Text(selectedTime.format(context)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
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
  void didUpdateWidget(DateTimeDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}