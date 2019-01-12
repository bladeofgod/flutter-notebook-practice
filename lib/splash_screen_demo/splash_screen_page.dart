import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenPageState();
  }

}

class SplashScreenPageState extends State<SplashScreenPage> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(milliseconds: 1500));
    animation = Tween(begin: 0.0,end: 1.0).animate(controller);

    animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return MyHomePage(title:'splash demo');
        }));
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeTransition(
      opacity: animation,
      child: Image.asset('assets/photo.jpg',scale: 2.0,fit: BoxFit.cover,),
    );
  }
}
















