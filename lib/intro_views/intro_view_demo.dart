import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import 'package:flutter/material.dart';
import 'home_page.dart';

/*
* 酷炫的动画，具体可以运行或者百度
*
* */

class IntroViewDemo extends StatelessWidget{
  
  final pages = [
    new PageViewModel(title: Text('flights'),
         body: Text('Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation'),
        mainImage: Image.asset(
          'assets/airplane.phg',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        ),
        pageColor: const Color(0xFF03A9F4),
        iconImageAssetPath: 'assets/air-hostess.png',
        iconColor: null,
      bubbleBackgroundColor: Color(0xFF607D8B),
      textStyle: TextStyle(fontFamily: 'MyFont',color: Colors.blue)
    ),
    new PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'assets/waiter.png',
      iconColor: null,
      bubbleBackgroundColor: Color(0xFF607D8B),
      body: Text(
        'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
      ),
      title: Text('Hotels'),
      mainImage: Image.asset(
        'assets/hotel.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    new PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/taxi-driver.png',
      iconColor: null,
      bubbleBackgroundColor: Color(0xFF607D8B),
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
      ),
      title: Text('Cabs'),
      mainImage: Image.asset(
        'assets/taxi.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),

  ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'intro view demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new Builder(builder: (context)=>IntroViewsFlutter(
        pages,
        onTapDoneButton: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return MyHomePage(title: 'flutter demo home page',);
          }));
        },
        showSkipButton: true,
        pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0
        ),
      )),
    );
  }
  
}














