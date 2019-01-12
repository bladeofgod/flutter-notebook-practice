import 'package:flutter/material.dart';

/**
 * 使用Dismissible组件实现右滑删除
 * 它是根据Key来删除ListView中的某一项的
 * 请注意ListView.builder中itemBuilder: (context, index)传进的index
 * 他不是list中的下标，而是这个组件在当前屏幕上所占的位置
 */

class SwipeToDismissPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwipeToDismissPageState();
  }

}

class SwipeToDismissPageState extends State<SwipeToDismissPage> {
  List<String> list = List.generate(20, (index)=>'this is number $index');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SwipeToDissmissDemo'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
          return Dismissible(
            key: Key(list[index]),
            direction: DismissDirection.endToStart,
            child: ListTile(title: Text('${list[index]}'),),
            background: Container(
              color: Colors.redAccent,
            ),
            onDismissed: (direction){
              setState(() {
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('${list[index]}'))
                );
                list.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}


















