import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seipday1/day10/home.dart';
import 'package:seipday1/day10/photo.dart';
import 'package:seipday1/day10/list.dart';

class NavigationPage extends StatefulWidget {
   NavigationPage({Key? key}) : super(key: key);


  @override
  State<NavigationPage> createState() => _NavigationPageState();
}


class _NavigationPageState extends State<NavigationPage> {
  List<Widget> mypages = [MyHomePage(), MyProfilePage(),MySettingPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.blue,
        color: Colors.green,
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
      body: mypages[currentIndex],
    );
  }
}
