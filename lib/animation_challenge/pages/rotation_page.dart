import 'package:flutter/material.dart';
import '../widgets/rotation_bar.dart';


class RotationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: size.width / 4,
            top: size.height / 3,
            child: RotationBar(
              goBackCenter: true,
              dx: size.width / 4,
              dy: size.height / 3,
              style: Style.Touch,
              getAngle: (angle) {
                print(angle);
              },
            ),
          )
        ],
      ),
    );
  }

}