import 'package:flutter/material.dart';

class BmiResultPage extends StatefulWidget {
  double bmi;
   BmiResultPage({Key? key,required this.bmi}) : super(key: key);

  @override
  State<BmiResultPage> createState() => _BmiResultPageState();
}

class _BmiResultPageState extends State<BmiResultPage> {
  Color bgColor = Color(0xFF1A1F38);
  Color carColor = Color(0xFF0A0E21);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("BMI Score"),
      ),
      body: Text("${widget.bmi.toStringAsFixed(2)}"),
    );
  }
}
