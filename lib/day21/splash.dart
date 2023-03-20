import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seipday1/day21/home_page21.dart';

class SplashClass extends StatefulWidget {
  const SplashClass({Key? key}) : super(key: key);

  @override
  State<SplashClass> createState() => _SplashClassState();
}

class _SplashClassState extends State<SplashClass> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage21())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white12,
          color: Colors.blue,
        ),
      ),
    );
  }
}
