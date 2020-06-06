import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('絕對位置配置'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
       child: Stack(//Stack內如果有多個組件,組建將會重疊 例:Text 多個 裡面的字將重疊
//        alignment: Alignment.bottomCenter,//他只配置Text內的東西
          alignment: Alignment(1,0),
         //Alignment(X,Y) x軸最右邊是 1, Y軸最上面是-1
          children: <Widget>[
            Container(//Container的置中是Center給予的
              height: 400,
              width: 300,
              color: Colors.red,
            ),
            Text(
              "測試0001",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
    );

  }

}