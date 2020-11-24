import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return /*Column(
      children: [
        IconBadge(Icons.pool, size: 128,),
      ],
    );*/
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0)
              ),
            ),
          )
          /*IconBadge(Icons.pool),
          IconBadge(Icons.pool),
          IconBadge(Icons.pool),*/
        ],
      ),
    );
  }

}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
        width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }

}