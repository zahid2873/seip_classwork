import 'package:flutter/material.dart';
import 'package:seipday1/day12/page1.dart';
import 'package:seipday1/day12/page2.dart';
import 'package:seipday1/day12/page3.dart';
import 'package:seipday1/day12/page5.dart';

class Page04 extends StatelessWidget {
  const Page04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,


          children: [
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));}, child: Text("Go to Page2")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));}, child: Text("Go to Page3")),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Go Back")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page5()));}, child: Text("Go to Page5")),

          ],
        ),
      ),
    );
  }
}
