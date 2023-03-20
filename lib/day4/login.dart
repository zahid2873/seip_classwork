import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bangaldesh"),
        centerTitle: true,

      ),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(15,),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
         color: Colors.green,
          //border: Border.all(color: Colors.blue,width: 5,),
         // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
          //gradient: LinearGradient(colors: [Colors.red,Colors.green], begin: Alignment.bottomRight,end: Alignment.bottomLeft),
          //borderRadius: BorderRadius.circular(30),
        ),
        child : Container(
          height: 120,
          width: 120,
          margin: EdgeInsets.all(18),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            //border: Border.all(color: Colors.blue, width: 5),
           // gradient: LinearGradient(colors: [Colors.red,Colors.green], begin: Alignment.bottomLeft,end: Alignment.bottomRight),
            //borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
    );
  }
}
