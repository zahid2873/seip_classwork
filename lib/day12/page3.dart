import 'package:flutter/material.dart';

import 'page4.dart';

class Page3 extends StatefulWidget {
  List ?name;
  int?id;
   Page3({Key? key,this.name,this.id}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,


          children: [
            Text("${widget.name} ${widget.id}"),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Page04()));

            }, child: Text("Go to Page 4")),
          ],
        ),
      ),
    );
  }
}
