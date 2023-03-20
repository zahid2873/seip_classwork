import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../day10/home.dart';
import '../day10/list.dart';
import '../day10/photo.dart';

class DrawearClass extends StatefulWidget {
  const DrawearClass({Key? key}) : super(key: key);

  @override
  State<DrawearClass> createState() => _DrawearClassState();
}

class _DrawearClassState extends State<DrawearClass> {
  @override
  Widget build(BuildContext context) {

    List<Widget> myPages = [MyHomePage(), MyProfilePage(),MySettingPage()];
    int index = 0;

    MySnackBar(msg, context){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }
    MyAlertDialog(context){
      return showDialog(context: context, builder: (BuildContext context){
        return Container(
          height: 250,
          width: 150,

          child: AlertDialog(
            backgroundColor: Colors.blueGrey,
            elevation: 20,
            title: Text("Alert"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
                MySnackBar("Deleted successful", context);}, child: Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          ),
        );
      });
    }


    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.green,
        color: Colors.red,
        items: [
          Icon(Icons.home),
          Icon(Icons.photo),
          Icon(Icons.list_alt),
        ],
        onTap: (value){
          setState(() {
            index = value;
          });
        },
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(300))
        ),

        child: ListView(
          children: [
            DrawerHeader(padding: EdgeInsets.zero, child: UserAccountsDrawerHeader(
              accountName: Text("Bill Gates"),
              accountEmail: Text("billgates96@gmail.com"),
              currentAccountPicture: Container(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                    child: Image.network('http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQi4a8NzG1ocCbgUUZxxDLocQwDQvhod4gHC3aRRg3juK0LDsZHECn7AwMJq8WUmPFLai9IJhY5YWNLRys',fit: BoxFit.cover,)),
              ),
            )),

            Card(
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  MySnackBar("It's Home", context);
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 5,),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.menu),
                title: Text("Menu"),
                onTap: (){
                  MySnackBar("It's Menu", context);
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 5,),
            Card(
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){
                  MySnackBar("It's Setting", context);
                  Navigator.pop(context);

                },
              ),
            )
          ],
        ),
      ),
      body: myPages[index],
      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       ElevatedButton(onPressed: (){
      //         MyAlertDialog(context);
      //         },
      //           child: Text("Delete")),
      //     ],
      //   ),
      // ),
    );
  }
}
