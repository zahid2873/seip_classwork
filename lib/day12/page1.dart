import 'package:flutter/material.dart';
import 'package:seipday1/day12/page2.dart';
import 'package:seipday1/day12/page3.dart';
import 'package:seipday1/day12/page4.dart';
import 'package:seipday1/day12/page5.dart';

class Page1 extends StatelessWidget {

   Page1({Key? key}) : super(key: key);

  List name = ['a','b','c','d','e','f','g'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Page1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(name: name,id:2,)));}, child: Text("Go to Page2")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));}, child: Text("Go to Page3")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));}, child: Text("Go to Page4")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page5()));}, child: Text("Go to Page5")),

          ],
        ),
      ),
    );
  }
}
