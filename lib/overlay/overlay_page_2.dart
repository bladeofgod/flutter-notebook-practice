import 'package:flutter/material.dart';
import 'dart:async';

/**
 * 如果你的叠加层是完全不透明而且能沾满整个屏幕的话
 * 使用opaque：true 能够跳过构建原本的widget tree从而提升性能
 * 请通过注释opaque体验它的效果
 *
 * 如果就算这个叠层挡住了下面的widget了，但是你还是希望渲染下面的组件
 * 使用maintainState：true 能够强制渲染下方的widget，这个属性很昂贵，谨慎使用
 *
 * 如果你想改变叠加层的状态
 * 请在状态改变后使用overlayEntry.markNeedsBuild()它将会在下一帧重新rebuild
 * 而不是setState()
 */


class OverlayPage2 extends StatefulWidget{

  final String title;
  OverlayPage2({Key key,this.title}) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OverlayPage2State();
  }

}

class OverlayPage2State extends State<OverlayPage2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Center(
        child: Text(
          'Overlay Demo',
          style: TextStyle(fontSize: 36.0),
        ),
      ),
      floatingActionButton: Builder(builder: (context){
        return FloatingActionButton(
          child: Icon(Icons.fiber_smart_record),
          onPressed: ()=> showOverlay(context),
        );
      }),
    );
  }

  showOverlay(context) async{
    Color color = Colors.pinkAccent;

    OverlayState overlayState = Overlay.of(context);
    OverlayEntry entry = OverlayEntry(
      maintainState: true,//开销极大
      builder: (context){
        return Opacity(opacity: 0.5,
        child: Scaffold(
          body:Center(
            child: Container(
              height: 100.0,
              width: 100.0,
              color: color,
            ),
          ) ,
        ),);
      },

    );

    overlayState.insert(entry);
    await Future.delayed(Duration(seconds: 2 ));
    color = Colors.green;
    entry.markNeedsBuild();
    await Future.delayed(Duration(seconds: 2));
    entry.remove();
  }




}




















