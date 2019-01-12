import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';

import 'package:multi_image_picker/asset.dart';
import 'package:multi_image_picker/multi_image_picker.dart';



class MultiImagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MultiImagePageState();
  }

}

class MultiImagePageState extends State<MultiImagePage> {

  List<Asset> images = List<Asset>();
  String error;
  List resultList ;


  Future<void> loadAssets() async{
    setState(() {
      images = List<Asset>();
    });

    try{
      resultList = await MultiImagePicker.pickImages(maxImages: 300);
    }on PlatformException catch(e){
      error = e.message;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    if(!mounted) return;

    setState(() {
      images = resultList;
      if(error == null) error = 'no error dectected';
    });


  }


  Widget buildImage(Asset asset){
    if(asset.thumbData != null){
      return Image.memory(
        asset.thumbData.buffer.asUint8List(),
        fit: BoxFit.cover,
        gaplessPlayback: true,
      );
    }

    return Container();
  }

  void loadImage(Asset asset) async{
    await asset.requestThumbnail(300, 300);
    setState(() {

    });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        loadImage(images[index]);
        return buildImage(images[index]);
      },itemCount: images.length,) ,
      floatingActionButton: FloatingActionButton(onPressed: loadAssets,child: Icon(Icons.image),),
    );
  }
}

















