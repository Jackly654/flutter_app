import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'test1', style: TextStyle(fontWeight: FontWeight.bold),),
              accountEmail: Text('test112312@asjdla.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606111238519&di=53371bd196829e3bcd3f536bbeea17dc&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201409%2F11%2F20140911211243_3rT4u.jpeg'),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606111401824&di=7fd376bbfe1a1aa45780a491005efda2&imgtype=0&src=http%3A%2F%2Fpic2.zhimg.com%2F50%2Fv2-adcadef7232c32d69929c7f0dbcfd30f_hd.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.yellow[400].withOpacity(0.6),
                          BlendMode.hardLight)
                  )
              ),
            ),
            ListTile(
              title: Text('Messages', textAlign: TextAlign.right,),
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Favorite', textAlign: TextAlign.right,),
              trailing: Icon(
                Icons.favorite, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Settings', textAlign: TextAlign.right,),
              trailing: Icon(
                Icons.settings, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
          ],
        )
    );
  }
}
