import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/animation_demo/animation_pages/login_page.dart';
import 'package:flutter_notebook_practice/animation_demo/animation_pages/another_parent_animation_page.dart';

class AnimationMainPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationMainPageState();
  }

}

class AnimationMainPageState extends State<AnimationMainPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('animation demo unit'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 5.0,
              child: ListTile(
                leading: Icon(Icons.note),
                title: Text('login page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new LoginPage();
                  }));
                },
              ),
            ),
            Card(
              elevation: 5.0,
              child: ListTile(
                leading: Icon(Icons.note),
                title: Text('parent animation page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new ParentAnimation();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
















