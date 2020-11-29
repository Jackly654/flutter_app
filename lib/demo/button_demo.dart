import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          child: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),

        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              /*shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),*/
              shape: StadiumBorder(),
            ),
          ),//ThemeData(),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
            //textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
            //textColor: Theme.of(context).accentColor,
          ),
        ),

        SizedBox(width: 16.0,),

        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          elevation: 2.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              /*shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),*/
              shape: StadiumBorder(),
            ),
          ),//ThemeData(),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            color: Theme.of(context).accentColor,
            //textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
            //textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
              color: Colors.black,
            ),

            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),

        SizedBox(width: 16.0,),

        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          //elevation: 2.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width:160.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            color: Theme.of(context).accentColor,
            //textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
            //textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
              color: Colors.black,
            ),

            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            color: Theme.of(context).accentColor,
            //textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
            //textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
              color: Colors.black,
            ),

            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          flex: 1,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            color: Theme.of(context).accentColor,
            //textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
            //textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
              color: Colors.black,
            ),

            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            ),
          ),
          child: ButtonBar(
            children: [
              OutlineButton(
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey[100],
                color: Theme.of(context).accentColor,
                //textColor: Colors.white,
                textTheme: ButtonTextTheme.primary,
                //textColor: Theme.of(context).accentColor,
                borderSide: BorderSide(
                  color: Colors.black,
                ),

                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey[100],
                color: Theme.of(context).accentColor,
                //textColor: Colors.white,
                textTheme: ButtonTextTheme.primary,
                //textColor: Theme.of(context).accentColor,
                borderSide: BorderSide(
                  color: Colors.black,
                ),

                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ButtomDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}