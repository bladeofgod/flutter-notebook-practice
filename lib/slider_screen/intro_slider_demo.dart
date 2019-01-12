import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

import 'home_screen.dart';


class SliderScreen extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliderScreenState();
  }

}

class SliderScreenState extends State<SliderScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    slides.add(
      new Slide(
        title: "FLUTTER",
        description:
        "Get Faster Development, Flexible UI & Access Native Features. Learn More! High-Quality Interfaces. Flexible UI. Fast Development.",
        pathImage: "assets/images/flutter.png",
        backgroundColor: Colors.blue,
      ),
    );
    slides.add(
      new Slide(
        title: "DART",
        description:
        "Developers at Google and elsewhere use Dart to create high-quality, mission-critical apps for iOS, Android, and the web. With features aimed at client-side development, Dart is a great fit for both mobile and web apps.",
        pathImage: "assets/images/dart.png",
        backgroundColor: Colors.red,
      ),
    );
    slides.add(
      new Slide(
        title: "WELECOME",
        description:
        "开始你的app",
        pathImage: "assets/images/flutterlogo.png",
        backgroundColor: Colors.yellow,
      ),
    );
  }

   onDonePress(){
    Navigator.of(context).pushAndRemoveUntil(
    new MaterialPageRoute(builder: (context){
      return MyHomePage(title: 'home page',);
    }),(route)=> route ==null);
  }

   onSkipPress(){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
      return MyHomePage(title: 'home page',);
    }), (route)=>route == null);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress(),
      onSkipPress: this.onSkipPress(),
    );
  }
}















