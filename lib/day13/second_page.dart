import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key,this
      .email,this.password}) : super(key: key);

  String ?email; String ?password;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text("${widget.email}"),
              Text("${widget.password}"),
            ],
          ),
        ),
      ),
    );
  }
}
