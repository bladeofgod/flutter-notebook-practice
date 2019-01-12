import 'package:flutter/material.dart';

import 'overlay_page_1.dart';
import 'overlay_page_2.dart';


class OverlayDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('overlay demo'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.star,color: Colors.blue,),
              title: Text('page 1'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return OverlayPage1(title: 'overlay demo : page 1',);
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star,color: Colors.blue,),
              title: Text('page 2'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return OverlayPage1(title: 'overlay demo : page 2',);
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

}