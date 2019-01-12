import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliverPageState();
  }

}

class SliverPageState extends State<SliverPage> {

  ScrollController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();

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
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: <Widget>[
          buildSliverAppBar(),
          buildSliverToBoxAdapter(),
          buildSliverGrid(context),
          buildSliverFixedExtentList(context),
          buildSliverFillViewport(),
        ],
      ),
    );
  }

  Widget buildSliverAppBar(){
    return SliverAppBar(
      backgroundColor: Colors.white.withOpacity(0.5),
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: Text(
          'Sliver demo'
        ),
        background: Image.network("https://www.snapphotography.co.nz/wp-content/uploads/New-Zealand-Landscape-Photography-prints-12.jpg",
        fit: BoxFit.cover,),
      ),
    );
  }

  Widget buildSliverToBoxAdapter(){
    return SliverToBoxAdapter(
      child: Container(
        height: 100.0,
        color: Colors.pinkAccent.withOpacity(0.8),
        child: Center(
          child: Text('sliver to box adapter',
          style: TextStyle(color: Colors.white,fontSize: 24.0),),
        ),
      ),
    );
  }

  Widget buildSliverGrid(BuildContext context){
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0
      ),
      delegate: SliverChildBuilderDelegate((context,index){
        return Container(
          alignment: Alignment.center,
          color: Colors.teal[100*(index%10)],
          child: Text('sliver grid item $index'),
        );
      },childCount: 10),
    );
  }

  Widget buildSliverFixedExtentList(BuildContext context){
    return SliverFixedExtentList(
      itemExtent: 50.0,
      delegate:SliverChildBuilderDelegate((context,index){
        return Container(
          alignment: Alignment.center,
          color: Colors.lightBlue[100*(index%10)],
          child: Text('sliver fixed extent list item $index'),
        );
      },childCount: 10),
    );
  }


  Widget buildSliverFillViewport(){
    return SliverFillViewport(
      delegate: SliverChildListDelegate(
        [
          Container(
            height: 100.0,
              color: Colors.pinkAccent.withOpacity(0.8),
              child: Center(
                child: Text('Sliver fill viewport',style: TextStyle(color: Colors.white,fontSize: 24.0),),
              ),
          ),
        ]
      ),viewportFraction: 1.0,
    );
  }




}











