import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }

}

class LoginPageState extends State<LoginPage> {

  TextEditingController _nameController;
  TextEditingController _pwdController;

  @override
  void initState() {
    // TODO: implement initState
    _nameController = TextEditingController();
    _pwdController = TextEditingController();

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 80.0,
            ),
            Center(
              child: Text('Login',style: TextStyle(fontSize: 32.0),),
            ),
            const SizedBox(height: 80.0,),
            _buildTextField(_nameController,false,"name"),
            _buildTextField(_pwdController,true,"password"),
            const SizedBox(height: 40.0,),
            ButtonBar(
              children: <Widget>[
                RaisedButton(onPressed: (){},child: Text("login",),color: Colors.white,)
              ],
            )
          ],
        ),
      ),
    );
  }


  Widget _buildTextField(TextEditingController controller,bool obscureText,String labelText){
    return Padding(padding: const EdgeInsets.all(16.0),
          child: Material(
        borderRadius: BorderRadius.circular(10.0),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: labelText,
              ),
            ),
    ),
    );
  }

}














