import 'package:flutter/material.dart';

import 'expension_panel_list.dart';
import 'expension_title.dart';


class ExpansionDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.note),
                title: Text('expansion panel list '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ExpansionPanelListPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('expansion title'),
                leading: Icon(Icons.note,color: Colors.red,),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ExpansionTilePage();
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