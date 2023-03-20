import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seipday1/day21/home_page21.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageHW())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Loading...",style: TextStyle(fontSize: 24),),
            SizedBox(height: 10,),
            CircularProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
