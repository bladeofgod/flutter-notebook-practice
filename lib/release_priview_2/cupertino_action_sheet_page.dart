import 'package:flutter/cupertino.dart';

class ActionSheetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ActionSheetPageState();
  }

}

class ActionSheetPageState extends State<ActionSheetPage> {

  ScrollController controller;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }


  Widget buildCupertinoActionSheet(BuildContext context){
    return CupertinoActionSheet(
      title: Text('provide a cancel button',style: TextStyle(fontSize: 24.0),),
      message: Text(
          'A Cancel button instills confidence when the user is abandoning a task. Cancel buttons should always be included in action sheets at the bottom of the screen.'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          onPressed: (){},child: Text('close this tab'),
        ),
        CupertinoActionSheetAction(
            onPressed: () {}, child: Text('New Private Tab')),
        CupertinoActionSheetAction(onPressed: () {}, child: Text('New Tab')),
      ],
      actionScrollController: controller,
      cancelButton: CupertinoButton(child: Text('cancel'), onPressed: (){}),
    );
  }

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;


    // TODO: implement build
    return CupertinoPageScaffold(
      child: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            child: Image.network(
              "https://fsb.zobj.net/crop.php?r=hkkFZ3-khFUeHo8GkUECNFDxUXdorexx0cMrNuek0Kf_kOgncIb2k1KoMW1CA6iWGZRWsS-59s_LX2zsuySh2BoHqh795AThAfnCZo_Sdzo9J3rnRhRyWfFMYfl9CB66BpuU2HrCLaptzhQnJsK1Twc10YDX_ecEyhhC61dNqpn_Rttn194mlq6QF9s",
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: CupertinoButton(child: Text('cupertino action sheet'), onPressed: (){
              showCupertinoModalPopup(context: context, builder: (context){
                return buildCupertinoActionSheet(context);
              });
            }),
          ),
        ],
      ),
    );
  }
}

















