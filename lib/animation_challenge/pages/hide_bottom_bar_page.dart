import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HideBottomBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HideBottomBarPageState();
  }

}

class HideBottomBarPageState extends State<HideBottomBarPage> with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  Animation animation;
  ScrollController scrollController;

  void _judgeScroll(){
    if(scrollController.position.userScrollDirection == ScrollDirection.reverse){
      _animationController.forward();
    }
    if(scrollController.position.userScrollDirection == ScrollDirection.forward){
      _animationController.reverse();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 300));
    animation = Tween(begin: 0.0,end: -100.0,)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn));
    scrollController = ScrollController(keepScrollOffset:true)..addListener(_judgeScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController?.dispose();
    scrollController..removeListener(_judgeScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Immersive BottomNavigationBar'),
      ),
      body: _buildListView(),
      bottomNavigationBar: _buildBNB(context),
    );
  }

  Widget _buildBNB(BuildContext context){
     return AnimatedBuilder(
       animation: animation,
       builder: (context,child){
         return Container(
           height: 0.0,
           child: Stack(
             overflow: Overflow.visible,
             children: <Widget>[
               Positioned(
                 bottom: animation.value,left: 0.0,right: 0.0,child: child,
               )
             ],
           ),
         );
       },
       child: BottomNavigationBar(
         items:[
           BottomNavigationBarItem(icon: Icon(Icons.title), title: Text('title')),
           BottomNavigationBarItem(icon: Icon(Icons.title), title: Text('title')),
           BottomNavigationBarItem(icon: Icon(Icons.title), title: Text('title')),
           BottomNavigationBarItem(icon: Icon(Icons.title), title: Text('title'))
         ],
         type: BottomNavigationBarType.fixed,
       ),
     );
  }

  Widget _buildListView() => ListView.builder(
    controller: scrollController,
      itemBuilder:(context,index)=>ListTile(
        leading: Icon(Icons.access_time),
        title: Text('this is index $index'),
      ) ,
  );


}

















