import 'package:flutter/material.dart';
import 'will_pop_scope_page.dart';
import 'from_pop_page.dart';

/**
 * 这是一个捕获页面被回pop掉的demo，通过切换main中的import查看不同页面。
 * 其中包含使用WillPopScope实现提示dialog与form自带的dialog页面信息
 * 每个demo前已注明实现原理
 */


class WillPopScopeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('will pop scope page'),
              leading: Icon(Icons.note,color: Colors.redAccent,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return MyHomePage(title:'will pop scope page');
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('from pop page'),
              leading: Icon(Icons.note,color: Colors.redAccent,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return MyHomePageFrom(title: 'from pop page',);
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

}