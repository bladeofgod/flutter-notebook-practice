import 'package:flutter/cupertino.dart';

class TimerPickerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TimerPickerDemoState();
  }

}

class TimerPickerDemoState extends State<TimerPickerDemo> {

  Duration initialTimerDuration;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialTimerDuration = Duration(seconds: 10);
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: width,
          height: height / 4,
          child: CupertinoTimerPicker(onTimerDurationChanged: (time){
            print(time.toString());
            initialTimerDuration = time;
          },initialTimerDuration: initialTimerDuration,
          minuteInterval:5 ,
          secondInterval: 10,),

        ),
      ),
    );
  }
}















