import 'package:flutter/material.dart';

class AniCrossFadePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AniCrossFadePageState();
  }
}

class AniCrossFadePageState extends State<AniCrossFadePage> {
  bool _first = false;
  change() {
    setState(() {
      _first = _first ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: GestureDetector(
        onTap: change,
        child: AnimatedCrossFade(
            firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 200.0,
            ),
            secondChild: const FlutterLogo(
              style: FlutterLogoStyle.stacked,
              size: 200.0,
            ),
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 2)),
      ),
    );
  }
}
