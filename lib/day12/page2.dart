import 'package:flutter/material.dart';

import 'page1.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';

class Page2 extends StatelessWidget {
  List ? name;
  int ?id;
   Page2({Key? key,this.name,this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,


          children: [
            Text("$name,$id"),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));}, child: Text("Go to Page2")),
            ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Page3(name: name,id: 3,)));}, child: Text("Go to Page3")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));}, child: Text("Go to Page4")),
            //ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page5()));}, child: Text("Go to Page5")),

          ],
        ),
      ),
    );
  }
}
