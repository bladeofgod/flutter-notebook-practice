import 'package:flutter/material.dart';
import 'widget_image_page.dart';
import 'another_demo.dart';

class WidgetToImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.note),
              title: Text('another demo'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return AnotherDemo();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.note),
              title: Text('widget to image demo'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return WidgetToImagePage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

}