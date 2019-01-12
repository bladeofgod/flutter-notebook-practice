import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/scoped_demo/model/count_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_notebook_practice/scoped_demo/under_screen.dart';


class TopScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TopScreenState();
  }

}

class TopScreenState extends State<TopScreen> {


  //静态获取model用法实例
  Model getModel(BuildContext context){
    //直接使用of
    final countModel = ScopedModel.of<CountModel>(context);
    //使用CountModel中重写的of
    final countModel2 = CountModel().of(context);

    countModel.increment();
    countModel2.increment();
    return countModel;
    //    return countMode2;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<CountModel>(
      builder: (context,child,model){
        return Scaffold(
          appBar: AppBar(
            title: Text('Top screen'),
          ),
          body: Center(
            child: Text(
              model.count.toString(),
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return UnderScreen(title: 'under screen',);
            }));
          },child: Icon(Icons.add),),
        );
      },
    );
  }
}

















