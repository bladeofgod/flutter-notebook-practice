import 'package:flutter/material.dart';

import 'basic_structure_hero.dart';
import 'photo_hero.dart';

class HeroDemoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('basic structure hero'),
              leading: Icon(Icons.note,color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SourceHeroPage();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('photo hero'),
              leading: Icon(Icons.note,color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return PhotoHeroPage();
                }));
              },
            ),
          )
        ],
      ),
    );
  }

}