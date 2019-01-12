import 'package:flutter/material.dart';
import 'draggable_widget.dart';


class DraggablePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DraggablePageState();
  }

}

class DraggablePageState extends State<DraggablePage> {
  Color draggableColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(100.0, 100.0),
            widgetColor: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(200.0,100.0),
            widgetColor: Colors.red,
          ),
          Center(
            child: DragTarget(
              onAccept:(Color color){
                draggableColor = color;
              } ,
              builder: (context,candidateData,rejectedData){
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: draggableColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}











