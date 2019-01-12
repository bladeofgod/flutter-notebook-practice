import 'package:flutter/cupertino.dart';
/**
 * 原理：只要使用了CupertinoPageRoute push进来的页面就都会具有右滑返回的操作
 */


class RightBackPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.black,
          child: CupertinoButton(child: Icon(CupertinoIcons.add), onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(builder: (context){
              return RightBackPage();
            }));
          }),
        ),
      ),
    );
  }

}
