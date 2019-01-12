import 'package:flutter/material.dart';
import 'custom_router.dart';

/**
 * Navigator.of(context).push自定义的route
 */


class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('first page'),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.blue,
            size: 64.0,
          ),
          onPressed: ()=>Navigator.of(context).push(CustomRouter(SecondPage())),
        ),
      ),
    );
  }

}


class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
        backgroundColor: Colors.red,
        leading: Container(),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(onPressed: ()=>Navigator.of(context).pop(),child: Icon(Icons.navigate_before,
        color: Colors.blue,size: 64.0,),),
      ),
    );
  }

}

















