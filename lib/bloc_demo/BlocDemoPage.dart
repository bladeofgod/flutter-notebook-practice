import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/bloc_demo/rxdart/bloc/bloc_provider.dart';
import 'package:flutter_notebook_practice/bloc_demo/rxdart/top_page.dart';

/**
 * 切换注释查看single_global_instance / scoped模式的BLoC demo
 * 有两个地方需要切换，一个是导入的top_page要切换，另外一个是MyApp要切换
 * BLoC  配合 streamBuilder
 */
class BlocDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BlocDemoPageState();
  }

}

class BlocDemoPageState extends State<BlocDemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      child: Scaffold(
        body: TopPage(),
      ),
    );
  }
}