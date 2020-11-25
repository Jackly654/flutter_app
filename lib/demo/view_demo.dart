import 'package:flutter/material.dart';
import '../modle/post.dart';

class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
      //GridViewExtendDemo();
      //GridViewCountDemo();
      //PageViewBuilderDemo();
    //PageViewDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }

}

class GridViewExtendDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      //scrollDirection: Axis.horizontal,
      maxCrossAxisExtent: 150.0,
      children: _buildTiles(100),
    );
  }
}

  class GridViewCountDemo extends StatelessWidget{
    List<Widget> _buildTiles(int length){
      return List.generate(length, (index) {
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        );
      });
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      //scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
  }

  class PageViewBuilderDemo extends StatelessWidget{
    Widget _pageItemBuilder(BuildContext context, int index){
      return Stack(
        children: [
          SizedBox.expand(
            child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover
            ),
          ),
          Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  posts[index].author,
                ),
              ],
            ),
          )
        ],
      );
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    ) ;
  }
}


  class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      //pageSnapping: false,
      //reverse: true,
      //scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),
      controller: PageController(
          initialPage: 1,
          viewportFraction: 0.85
      ),
      children: [
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),

        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),

        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }

}
