import 'package:flutter/material.dart';
import 'package:seipday1/day10/photo.dart';

import 'list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  MyAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return Container(
        height: 250,
        width: 150,

        child: AlertDialog(
          //backgroundColor: Colors.,
          elevation: 20,
          title: Text("Alert"),
          content: Text("Do you want to Call"),
          actions: [
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MySettingPage()));},
              child: Text("Yes")),
            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  "https://cdn.thecrazytourist.com/wp-content/uploads/2017/03/Saint-Martin.jpg",
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -40,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Card(
                        color: Colors.black54,
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlKi-dTKsqe-aBxkOJnNmIGZYcXM0zQDKQOKZmqjDfINherAww6IGqvB8k44XwNhYTSus&usqp=CAU",
                              width: 100, height: 100, fit: BoxFit.cover),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onTap: () {
                  print("List Tile Clicked");
                },
                tileColor: Colors.blueGrey,
                title: Text(
                  'Sea Beach',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                subtitle: Text(
                  'Saint Martins Island, Bangladesh',
                  style: TextStyle(color: Colors.white),
                ),
                //leading: Icon(Icons.favorite,color: Colors.red,),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Text(
                      '78',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        MyAlertDialog(context);
                        print("calling...");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(7, 7),
                              color: Colors.blueGrey,
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          gradient: LinearGradient(colors: [
                            Colors.blueGrey.shade100,
                            Colors.blueGrey.shade900
                          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                        ),

                        // color: Colors.blueGrey.shade900,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'CALL',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        MyAlertDialog(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(7, 7),
                              color: Colors.blueGrey,
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          gradient: LinearGradient(colors: [
                            Colors.blueGrey.shade100,
                            Colors.blueGrey.shade900
                          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                        ),

                        // color: Colors.blueGrey.shade900,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.navigation,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ROUTE',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: () {

                        print("calling...");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(7, 7),
                              color: Colors.blueGrey,
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          gradient: LinearGradient(colors: [
                            Colors.blueGrey.shade100,
                            Colors.blueGrey.shade900
                          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                        ),

                        // color: Colors.blueGrey.shade900,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SHARE',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("St Martin’s Island a small island in the northeast of the bay of bengal, about 9 km south of the Cox’s Bazar-Teknaf peninsular tip and forming the southernmost part of Bangladesh. It is about 8 km west of the northwest coast of Myanmar at the mouth of the river naf. The island lies between 92°18' and 92°21'E longitudes and 20°34' and 20°39'N latitudes. The local people call it Narikel Jinjira. It is almost flat and is 3.6m above the mean sea level. The 9.66 km wide channel between the mainland and the island is much shallower than the open sea southwest of the island. There are reefs from 10-15 km to the west-northwest."),
            )
          ],
        ),
      ),
    );
  }
}
