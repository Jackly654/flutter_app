import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),/*ThemeData(
          primaryColor: Colors.black,
        ),*/
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TextFieldDemo(),
              RegisterFormDemo(),
            ],
          ),
        ),//ThemeDemo(),
      ),
    );
  }

}

class RegisterFormDemo extends StatefulWidget{
  RegisterFormDemoState createState() => RegisterFormDemoState();

}

class RegisterFormDemoState extends State{
  final registerFormKey = GlobalKey<FormState>();

  String username, password;

  void submitRegisterForm(){
    registerFormKey.currentState.save();
    registerFormKey.currentState.validate();

    debugPrint('username: $username');
    debugPrint('password: $password');

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Registering...'),
      )
    );
  }

  String validateUsername(value){
    if(value.isEmpty){
      return 'Username is empty';
    }
    return null;
  }

  String validatePassword(value){
    if(value.isEmpty){
      return 'Password is empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: registerFormKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value){
              username = value;
            },
            validator: validateUsername,
            //autovalidate: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatePassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget{
  TextFieldDemoState createState() => TextFieldDemoState();

}

class TextFieldDemoState extends State{
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //textEditingController.text = 'hi';
    textEditingController.addListener(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: textEditingController,
      /*onChanged: (value){
        debugPrint('input: $value');
      },*/
      onSubmitted: (value){
        debugPrint('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'input user post title.',
        //border: InputBorder.none,
        //border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }

}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

