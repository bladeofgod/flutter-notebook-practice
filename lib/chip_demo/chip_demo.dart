import 'package:flutter/material.dart';
import '../chip_demo/chip_page.dart';
import '../chip_demo/input_chip_page.dart';
import '../chip_demo/action_chip_page.dart';
import '../chip_demo/choice_chip_page.dart';
import '../chip_demo/filter_chip_page.dart';

class ChipDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('chip demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.blue,),
                title: Text('chip page'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ChipPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.blue,),
                title: Text('input chip page'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return InputChipPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.blue,),
                title: Text('action chip page'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ActionChipPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.blue,),
                title: Text('select chip page'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ChoiceChipPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.blue,),
                title: Text('filter chip page'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return FilterChipPage();
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