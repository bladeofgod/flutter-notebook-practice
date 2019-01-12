import 'package:flutter/material.dart';
import 'bottom_app_bar/main_page.dart';
import 'bottom_navigation_bar_demo/navigation_demo_page.dart';
import 'bottom_navigation_bar_demo/navigation_demo_keep_alive.dart';
import 'beautiful_search_bar/search_bar_demo.dart';
import 'animated_container/animated_container_demo.dart';
import 'animated_cross_fade/anim_cross_fade_demo.dart';
import 'animated_floating_btn/floating_btn_demo.dart';
import 'animation_challenge/animation_challenge_demo.dart';
import 'animation_demo/animation_main_page.dart';
import 'bloc_demo/BlocDemoPage.dart';
import 'chip_demo/chip_demo.dart';
import 'clipper_demo/clipper_demo_page.dart';
import 'custom_router_transition/custom_router_page.dart';
import 'draggable_demo/draggable_demo.dart';
import 'expension_demo/expension_demo.dart';
import 'frosted_glass_style_demo/frosted_glass_demo.dart';
import 'hero_demo/hero_demo_page.dart';
import 'intro_views/intro_view_demo.dart';
import 'keep_alive_demo/keep_alive_demo.dart';
import 'load_multi_image/multi_image_demo.dart';
import 'overlay/over_lay_demo.dart';
import 'pinch_zoom_image_demo/zoom_image_demo.dart';
import 'pull_on_loading_demo/pull_on_loading_demo.dart';
import 'redux_demo/redux_demo.dart';
import 'right_back_demo/right_back_demo.dart';
import 'release_priview_2/release_preview_demo.dart';
import 'scoped_demo/scoped_demo.dart';
import 'slider_screen/slider_demo.dart';
import 'spinkit_animation/spinkit_demo.dart';
import 'splash_screen_demo/splash_screen_demo.dart';
import 'swip_to_dismiss/swip_dismiss_demo.dart';
import 'textfiled_focus_demo/textfield_fouce_demo.dart';
import 'tool_tips_demo/tool_tips_demo.dart';
import 'url_launcher_demo/url_launcher_demo.dart';
import 'wrap_demo/wrap_demo.dart';
import 'widget_to_image/widget_to_image_demo.dart';
import 'will_pop_scope_demo/will_pop_scope_demo.dart';
import 'without_splash_color/without_splash_demo.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("home page"),),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text("bottom app bar"),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new MainPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text("bottom navigation bar"),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new NavigationDemoPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.blue,),
                title: Text('bottom navigation bar keep alive'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new NavigationKeepAlivePage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.redAccent,),
                title: Text('beautiful search bar'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new SearchBarDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('animated container demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new AnimatedContainerDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('animated cross fade'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new AniCrossFadeDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('floating button'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new FloatingBtnDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('animation challenge'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new AnimationChallenge();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('animation demo unit'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return new AnimationMainPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('bloc & stream demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return BlocDemoPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('chip demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ChipDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('clipper demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ClipperDemoPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('custom router transition demo  tip:need manual shift'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return CustomTransitionDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('draggable demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return DraggableDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('expansion demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ExpansionDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('frosted glass style demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return FrostedGlassDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('hero demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return HeroDemoPage();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('intro view demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return IntroViewDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('keep alive demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return KeepAliveDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('multi image demo !!! not working ,open code to see the detail'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return MultiImageDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('overlay demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return OverlayDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('pinch zoom image demo : had bug'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ZoomImageDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('pull on loading image demo Tip:need manual to shift different page to show '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return PullOnDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('redux demo '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ReduxDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('right back demo '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return RightBackDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('release priview 2 demo '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ReleasePreviewDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('scoped demo '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ScopedDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('slider demo '),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return SliderDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('spinkit demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return SpinkitDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('splash screen demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return SplashScreenDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('swipe to dismiss demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return SwipeDismissDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('text field focus demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return TFFocusDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('tool tip demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return ToolTipsDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('url launcher demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return UrlLauncherDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('wrap demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return WrapDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('widget to image demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return WidgetToImageDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('will pop scope demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return WillPopScopeDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.note,color: Colors.red,),
                title: Text('without splash color demo'),
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                    return WithoutSplashDemo();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}











