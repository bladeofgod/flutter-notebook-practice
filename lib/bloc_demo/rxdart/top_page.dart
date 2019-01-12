import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/bloc_demo/rxdart/bloc/bloc_provider.dart';
import 'under_page.dart';
/*
* don't init under_page
*
* */
class TopPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final bloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("top page"),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: bloc.stream,
          initialData: bloc.value,
          builder: (BuildContext context,AsyncSnapshot<int> snapshot){
            return Text(
              'you hit me ${snapshot.data} times',
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),
          onPressed: ()=>bloc.increment()),
    );
  }
  
}