import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/animation_challenge/pages/rotation_page.dart';
import 'package:flutter_notebook_practice/animation_challenge/pages/hero_demo.dart';
import 'package:flutter_notebook_practice/animation_challenge/pages/hide_bottom_bar_page.dart';
import 'package:flutter_notebook_practice/animation_challenge/pages/audio_page.dart';
import 'package:flutter_notebook_practice/animation_challenge/pages/ImPage.dart';

/**
 * flutter ui challenge
 * 请通过切换home注释查看
 *
 * 注意IMpage 中的 streamcontroller的使用
 */

class AnimationChallenge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('animation challeng'),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('rotation page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new RotationPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('hero page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new HeroDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('hide bottom bar page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new HideBottomBarPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('audio page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new AudioPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('im page'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new ImPage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),//,
    );
  }

}