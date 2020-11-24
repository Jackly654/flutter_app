import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          //image: AssetImage(assetName)
            image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606218929226&di=f990768fa9d94454ea05853a38237e45&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F26%2F50%2F20300001209310130588505647875.jpg'),
                alignment: Alignment.topCenter,
          //repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight),
        )
      ),
      //color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
                //color: Color.fromRGBO(3, 54, 255, 1.0),
                padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromRGBO(35, 154, 255, 1.0),
              border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid
              ),
              //borderRadius: BorderRadius.circular(64.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 11.0,
                  spreadRadius: -3.0,
                ),
              ],
              shape: BoxShape.circle,
                /*gradient:RadialGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0)
                  ],
                )*/
                gradient:LinearGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),
          )
        ],
      ),
    );
  }
}
class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
            text: 'jacasdasda',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
            children: [
              TextSpan(
                  text: '.net',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  )
              )
            ]
        )
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '孟子';
  final String _title = '王治';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('《$_title hello王者之人》—— $_author.：饰【1】动以礼义，听断【2】以类【3】，明振【4】毫末，举措应变而不穷，夫是之谓有原【5】。是王者之人也。王者之制【6】：道不过三代【7】，法不贰后王【6】。道过三代谓之荡【8】，法贰后王谓之不雅【9】。衣服有制，宫室有度，人徒有数，丧祭械用皆有等【10】宜，声则凡非雅声者举废，色则凡非旧文者举息，械用则凡非旧器者举毁。夫是之谓复古。是王者之制也。王者之论【11】：无德不贵，无能不官，无功不赏，无罪不罚，朝无幸【12】位，民无幸生，尚贤使能而等位不遗，析【13】愿【14】禁悍而刑罚不过，百姓晓【15】然皆知夫为善于家而取赏于朝也，为不善于幽而蒙刑于显也。夫是之谓定论。是王者之论也。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}