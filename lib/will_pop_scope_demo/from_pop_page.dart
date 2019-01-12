import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';


/**
 * 实现原理是利用form自带的onWillPop属性，其余与will_pop_scope_demo中一致。
 */

class MyHomePageFrom extends StatefulWidget{

  final String title;
  MyHomePageFrom({Key key,this.title}):super(key:key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }

}


class MyHomePageState extends State<MyHomePageFrom>{

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String color = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Form(
          onWillPop: onBackPressed,
          key: formKey,
          autovalidate: true,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your first and last name',
                  labelText: 'Name',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
                keyboardType: TextInputType.datetime,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  WhitelistingTextInputFormatter.digitsOnly,
                ],
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  hintText: 'Enter a email address',
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              new InputDecorator(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.color_lens),
                  labelText: 'Color',
                ),
                isEmpty: color == '',
                child: new DropdownButtonHideUnderline(
                  child: new DropdownButton<String>(
                    value: color,
                    isDense: true,
                    onChanged: (String newValue) {
                      setState(() {
                        color = newValue;
                      });
                    },
                    items: colors.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                  child: new RaisedButton(
                    child: const Text('Submit'),
                    onPressed: null,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Do you really want to exit the app?'),
          actions: <Widget>[
            FlatButton(
              child: Text('No'),
              onPressed: () => Navigator.pop(context, false),
            ),
            FlatButton(
              child: Text('Yes'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        ));
  }

}













