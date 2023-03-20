import 'package:flutter/material.dart';
import 'package:seipday1/day12/Page6.dart';
import 'package:seipday1/day12/page2.dart';

import 'page1.dart';
import 'page3.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,


          children: [
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));}, child: Text("Go to Page1")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));}, child: Text("Go to Page2")),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Go Back")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page6()));}, child: Text("Go to Page 6")),

          ],
        ),
      ),
    );
  }
}

class Page4 {
}
