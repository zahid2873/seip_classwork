import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'grid_class.dart';

class HomePagePbhw extends StatefulWidget {
  const HomePagePbhw({Key? key}) : super(key: key);

  @override
  State<HomePagePbhw> createState() => _HomePagePbhwState();
}

class _HomePagePbhwState extends State<HomePagePbhw> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),

        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.black87,
        color: Colors.deepPurpleAccent,
        items: [
          Icon(Icons.home),
          Icon(Icons.photo),
          Icon(Icons.list_alt),
        ],
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(

            children: [
               CustomContainer(),
              SizedBox(height: 20,),
              GridClass(),
            ],
          ),
        ),
      ),
    );
  }
}
