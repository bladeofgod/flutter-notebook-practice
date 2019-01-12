import 'package:flutter/material.dart';

import 'package:flutter_notebook_practice/scoped_demo/model/count_model.dart';
import '../scoped_demo/top_screen.dart';
import 'package:scoped_model/scoped_model.dart';


class ScopedDemo extends StatelessWidget{
  //创建顶层状态
  final CountModel countModel = CountModel();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<CountModel>(
      model: countModel,
      child: Scaffold(
        body: TopScreen(),
      ),
    );
  }

}