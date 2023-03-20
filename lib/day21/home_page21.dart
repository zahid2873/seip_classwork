import 'package:flutter/material.dart';

import 'travel_info.dart';

class HomePage21 extends StatelessWidget {
  const HomePage21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.menu,size: 26,color: Colors.black,),
        ],
      ),
      body: Column(
        children: [
          Text("Travel Blog",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Expanded(
            flex: 3,
            child:TravelInfo(),),
          Expanded(flex:1,child: Placeholder(),)
        ],
      ),
    );
  }
}
