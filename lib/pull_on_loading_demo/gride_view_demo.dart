import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'dart:async';


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> {

  ScrollController _controller;
  List<String> images;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    images = List();
    _controller = ScrollController();
    fetchTen();
    _controller.addListener((){
      if(_controller.position.pixels == _controller.position.maxScrollExtent){
        fetchTen();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: RefreshIndicator(child: GridView.builder(gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0
          ),
        controller: _controller,
        itemCount: images.length,
        itemBuilder: (BuildContext context,int index){
        return buildItem(images[index]);
        },), onRefresh: () async{
        await new Future.delayed(const Duration(seconds: 1));
        images.clear();
        fetchTen();
      }),
    );
  }


  Widget buildItem(String url){
    return Container(
      constraints: BoxConstraints.tightFor(height: 150.0),
      child: Image.network(url,fit: BoxFit.cover,),
    );
  }


  fetch() async{
    final response = await http.get('http://dog.ceo/api/breeds/image/random');
    if(response.statusCode == 200){
      setState(() {
        images.add(json.decode(response.body)['message']);
      });
    }else{
      throw Exception('failed to load images');
    }
  }



  fetchTen(){
    for(int i = 0;i<10;i++){
      fetch();
    }
  }



}














