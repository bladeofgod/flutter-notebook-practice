import 'package:flutter/material.dart';
import '../url_launcher_demo/email_demo.dart';
import '../url_launcher_demo/browser_webview_demo.dart';
import '../url_launcher_demo/tel_sms_demo.dart';


class UrlLauncherDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('tel sms demo'),
              leading: Icon(Icons.note),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TelAndSMSDemo();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('email launcher demo'),
              leading: Icon(Icons.note),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return EmailLauncherDemo();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('browser webview demo'),
              leading: Icon(Icons.note),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return BrowserWebviewDemo();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

}