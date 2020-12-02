import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../modle/post.dart';


class StepperDemo extends StatefulWidget {
  @override
  StepperDemoState createState() => new StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  bool _sortAscending = true;

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
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value){
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: (){
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 :_currentStep = 0;
                  });
                },

                onStepCancel: (){
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 :_currentStep = 0;
                  });
                },
                steps: [
                  Step(title: Text('Login'),
                      subtitle: Text('Confirm your payment method.'),
                      content: Text('Magna exercitation asdasdasdasd'),
                      isActive: _currentStep == 0,
                  ),
                  Step(title: Text('Choose plan'),
                    subtitle: Text('Choose your plan.'),
                    content: Text('Magna exercitation asd asd as dasd'),
                    isActive: _currentStep == 1,
                  ),
                  Step(title: Text('Confirm payment'),
                    subtitle: Text('Confirm your payment method.'),
                    content: Text('Magna exercitation dasd as dasd'),
                    isActive: _currentStep == 2,
                  ),
                ],
              ),
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
  void didUpdateWidget(StepperDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: impleme
  }
}