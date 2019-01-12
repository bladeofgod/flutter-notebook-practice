import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_notebook_practice/redux_demo/top_screen.dart';
import 'package:flutter_notebook_practice/redux_demo/states/count_state.dart';


class ReduxDemo extends StatelessWidget{

  final Store<CountState> store = Store<CountState>(reducer,initialState: CountState.initState());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreProvider<CountState>(
      store: store,
      child: MaterialApp(
        home: TopScreen(),
      )
    );
  }

}