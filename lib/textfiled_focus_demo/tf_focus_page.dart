import 'package:flutter/material.dart';
/**
 * 实现原理：
 * 使用FocusNode获取当前textField焦点
 * 在TextNode的textInputAction属性中选择键盘action（next/down）
 * 对于最后一个之前的TextField：在onSubmitted属性中解除当前focus状态
 * 再聚焦下一个FocusNode:FocusScope.of(context).requestFocus( nextFocusNode );
 * 对于最后一个TextField,直接解除focus并提交表单
 */

class TFFocusPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TFFocusPageState();
  }


}

class TFFocusPageState extends State<TFFocusPage> {

  TextEditingController nameController,pwdController;
  FocusNode nameFocus,pwdFocus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    pwdController = TextEditingController();
    nameFocus = FocusNode();
    pwdFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: ListView(
        children: <Widget>[
          const SizedBox(height: 80.0,),
          Center(
            child: Text('login',style: TextStyle(fontSize: 32.0),),
          ),
          const SizedBox(height: 80.0,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              child: TextField(
                focusNode: nameFocus,
                controller: nameController,
                obscureText: false,
                textInputAction: TextInputAction.next,
                onSubmitted: (input){
                  nameFocus.unfocus();
                  FocusScope.of(context).requestFocus(pwdFocus);
                },
                decoration: InputDecoration(labelText: 'name'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              child: TextField(
                focusNode: pwdFocus,
                controller: pwdController,
                obscureText: true,
                textInputAction: TextInputAction.done,
                onSubmitted: (input){
                  pwdFocus.unfocus();
                  //登录请求
                },
                decoration: InputDecoration(
                  labelText: 'password'
                ),
              ),
            ),
          ),
          const SizedBox(height: 40.0,),
          ButtonBar(
            children: <Widget>[
              RaisedButton(onPressed: (){},child: Text('login'),color: Colors.white,)
            ],
          )
        ],
      )),
    );
  }
}

















