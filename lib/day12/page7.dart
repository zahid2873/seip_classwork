import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,


          children: [
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));}, child: Text("Go to Page1")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));}, child: Text("Go to Page2")),
            //ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));}, child: Text("Go to Page")),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Go Back")),

          ],
        ),
      ),
    );
  }
}
