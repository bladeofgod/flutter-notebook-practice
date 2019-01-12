import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/material.dart';

/**
 * Hero Widget其实是利用了补件动画
 * 两个尽量相似的Hero之间，使用同一个tag name来进行animation
 * 所以分为源hero与目标hero
 * 通过导入scheduler包中的timeDilation能够修改变化速度
 * 在源Hero的build函数中设定timeDilation值即可
 */

class SourceHeroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SourceHeroPageState();
  }

}

class SourceHeroPageState extends State<SourceHeroPage> {

  Hero sourceHero = new Hero(tag:'hero tag' , child: Container(
    height: 100.0,
    width: 100.0,
    color: Colors.lightBlue,
  ));

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('source hero page'),
      ),
      body: Center(
        child: GestureDetector(
          child: sourceHero,
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return DestinationHeroPage();
            })
          ),
        ),
      ),
    );
  }
}


class DestinationHeroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DestinationHeroPageState();
  }

}

class DestinationHeroPageState extends State<DestinationHeroPage> {

  Hero destinationHero = new Hero(tag: "hero tag", child: Container(
    height: 100.0,
    color: Colors.blue,
  ));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('destination hero'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: destinationHero,onTap: ()=>Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}





















