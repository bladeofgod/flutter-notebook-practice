import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class HeroDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HeroDemoState();
  }
}

class HeroDemoState extends State<HeroDemo> {
  List<String> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = List.generate(20, (index) => "this is no.$index");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    timeDilation = 2.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Hero(
        tag: "FloatingActionBtn",
        child: FloatingActionButton(
          child: Icon(Icons.add) ,
            onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }))),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            children: <Widget>[
              TextField(
                autofocus: true,
                focusNode: focusNode,
                maxLines: 5,
                decoration: InputDecoration.collapsed(
                    hintText: 'what do you want to add?'),
              )
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Hero(
          tag: "FloatingActionBtn",
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 6.0),
            child: ButtonTheme(
              height: 48.0,
              minWidth: double.infinity,
              child: RaisedButton(
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                elevation: 10.0,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )),
    );
  }
}
