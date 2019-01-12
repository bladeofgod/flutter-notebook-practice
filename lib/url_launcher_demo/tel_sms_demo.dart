import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

/**
 * lanuch函数只接收电话号码，并且传入的电话号码格式为tel:xxxxxxxxxx
 */

class TelAndSMSDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TelAndSMSDemoState();
  }

}

class TelAndSMSDemoState extends State<TelAndSMSDemo> {

  Future<Null> launched;

  Future<Null> makeAPhoneCall(String phone) async{
    phone = "tel:$phone";
    if(await canLaunch(phone)){
      await launch(phone);
    }else{
      throw 'could not send $phone';
    }
  }

  Future<Null> sendAMessage(String phone) async{
    phone = "sms:$phone";
    if(await canLaunch(phone)){
      await launch(phone);
    }else{
      throw 'could not launch $phone';
    }
  }

  Widget launchStatus(BuildContext context,AsyncSnapshot<Null> snapshot){
    if(snapshot.hasError){
      return Text('error : ${snapshot.error}');
    }else{
      return const Text('');
    }
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const String url = '12393748294';
    return Scaffold(
      appBar: AppBar(
        title: Text('tel and sms demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                launched = makeAPhoneCall(url);
              },
              child: Text('make a phone call'),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            RaisedButton(
              onPressed: (){
                launched = sendAMessage(url);
              },
              child: const Text('send a message'),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            FutureBuilder<Null>(future: launched,builder: launchStatus,)
          ],
        ),
      ),
    );
  }
}




















