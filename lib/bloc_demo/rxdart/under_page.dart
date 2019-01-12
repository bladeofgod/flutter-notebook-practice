import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/bloc_demo/rxdart/bloc/bloc_provider.dart';

class UnderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bloc = BlocProvider.of(context);

    return Scaffold(

      body: Center(
        child: StreamBuilder<int>(
          stream: bloc.stream,
          initialData: bloc.value,
          builder: (context,snapshot) => Text(
            'you hit me ${snapshot.data} times',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>bloc.increment(),child: Icon(Icons.add),),
    );
  }

}