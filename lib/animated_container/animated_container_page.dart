import 'package:flutter/material.dart';

/**
 * AnimationContainer使用要点
 * 必须传入Duration告诉动画的播放时间
 * 当animationContainer接收到一个新的值的时候
 * 会根据老值进行补间动画
 * 例如开始宽高为100，然后给了新值0并setState后
 * AnimationContainer会让宽高从100逐渐变化到0
 * 其中变化曲线由Curve决定，默认为Curves.linear
 */

class AnimatedContainerPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AnimatedContainerPageState();
  }

}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _value = 255.0;

  _changeValue() =>setState((){
    _value = _value == 255.0 ? 80.0:255.0;
    print(_value);
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: GestureDetector(
        onTap: _changeValue,
        child: AnimatedContainer(
          curve: Curves.ease,
          duration: Duration(seconds: 2),
          width: _value,
          height: _value,
          child: FlutterLogo(),
        )
      ),
    );

  }
}
















