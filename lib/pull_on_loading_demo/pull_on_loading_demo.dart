import 'package:flutter/material.dart';

//import 'gride_view_demo.dart';
import 'pull_up_load_down_refresh.dart';

/**
 * 分别通过切换import中的注释来查看三个页面。
 * 建议分开阅读，下拉刷新和上拉加载的实现方式
 */


class PullOnDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('pull on demo'),
      ),
      body: MyHomePage(),
    );
  }

}