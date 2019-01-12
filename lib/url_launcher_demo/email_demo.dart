import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

/**
 * launch函数接收3个参数，email，subject，body,各个参数代表含义各位应该都能猜到。
 * 传入email格式为mailto:xxx@xxx.xx?subject=xxxxx&body=xxxxx
 */

class EmailLauncherDemo extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EmailLauncherDemoState();
  }

}

class EmailLauncherDemoState extends State<EmailLauncherDemo> {

  Future<Null> launched;
  Future<Null> sendEmail(String email,String subject,String body)async{
    email = "mailto:$email?subject=$subject&body=$body";
    if(await canLaunch(email)){
      await launch(email);
    }else{
      throw 'could not send $email';
    }
  }

  Widget launchStatus(BuildContext context,AsyncSnapshot<Null> snapshot){
    if(snapshot.hasError){
      return Text('Error : ${snapshot.error}');
    }else{
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    const String email = '1652219550a@gmail.com';
    const String subject = 'email test';
    const String body = '这是一次email测试';
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('email launcher demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  launched = sendEmail(email, subject, body);
                });
              },
              child: const Text('send a email'),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            FutureBuilder<Null>(future: launched,builder: launchStatus,)
          ],
        ),
      ),
    );;
  }
}






















