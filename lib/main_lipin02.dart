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
//        alignment: Alignment.center,使用Positioned,alignment將無效果
        child: Stack(
          children: <Widget>[
            Positioned(//由左往右偏移10
              left: 10,
              child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Positioned(  //底部由左往右偏移100
              bottom: 0,
              left: 100,
              child: Icon(Icons.search,size: 40,color: Colors.white,),
            ),
            Positioned(//最右側
              right: 0,
              child: Icon(Icons.select_all,size: 40,color: Colors.white,),
            ),
          ],
      )
    ),
    );
  }

}