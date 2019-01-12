import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

/**
 * canLaunch(url)，能够检查链接是否有效
 * 它会先检查url字符串是否为空再通过MethodChannel调用原生，并通过返回一个bool
 *该demo直接来自于pub
 */


class BrowserWebviewDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BrowserWebviewDemoState();
  }

}

class BrowserWebviewDemoState extends State<BrowserWebviewDemo> {
  Future<Null> launched;

  Future<Null> launchedBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(url,forceSafariVC: false,forceWebView: false);
    }else{
      throw 'could not launch $url';
    }
  }

  Future<Null> launchInWebViewOrVC(String url) async{
    if(await canLaunch(url)){
      await launch(url,forceSafariVC: true,forceWebView: true);
    }else{
      throw 'could not launch $url';
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
    const String url = 'https://flutter.io';
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('url launcher demo'),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  launched = launchInWebViewOrVC(url);
                });
              },
              child: const Text('Launch in browser'),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            new RaisedButton(
              onPressed: () => setState(() {
                launched = launchInWebViewOrVC(url);
              }),
              child: const Text('Launch in app'),
            ),
            const Padding(padding: const EdgeInsets.all(16.0)),
            new FutureBuilder<Null>(future: launched, builder: launchStatus),
          ],
        ),
      ),
    );
  }
}


















