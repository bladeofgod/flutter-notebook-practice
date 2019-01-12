import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/bloc_demo/rxdart/bloc/count_bloc.dart';

class BlocProvider extends InheritedWidget{

  CountBLoC bLoC = CountBLoC();

  BlocProvider({Key key,Widget child}):super(key:key,child:child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static CountBLoC of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bLoC;

}