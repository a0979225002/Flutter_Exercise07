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
      child:Container(
        height: 400,
        width: 300,
        color: Colors.redAccent,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Align(// 個別定位個別組建位置
              alignment: Alignment.topLeft,
              child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search,size: 40,color: Colors.white,),
            ),
            Align(
              alignment:Alignment.bottomRight ,
              child: Icon(Icons.select_all,size: 40,color: Colors.white,),
            ),
          ],
      )
    ),
    );
  }

}