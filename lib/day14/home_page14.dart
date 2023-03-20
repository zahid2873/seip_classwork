import 'package:flutter/material.dart';

class HomePage14 extends StatelessWidget {
  const HomePage14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 20,left: 20,top: 60),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                        child: Image.network("https://cdn.britannica.com/70/226370-004-F1EEB87E.jpg",width: double.infinity,fit: BoxFit.cover,))),
                Positioned(
                  top: 20,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                        child: Icon(Icons.favorite,color: Colors.red,)))
              ],
            ),
            ListTile(
              title: Text("Panthera leo",style: TextStyle(fontWeight: FontWeight.w700),),
              subtitle: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 5,),
                  Text("Distance (Near 10km)")
                ],
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                  child: Icon(Icons.male,)),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network("https://cdn.pixabay.com/photo/2017/10/25/16/54/african-lion-2888519__340.jpg",height: 80,width: 80,fit:BoxFit.cover)),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Lion",style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(height: 10),
                          Text("Chill",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(""),
                      SizedBox(height: 10,),
                      Text("14 Feb 2023",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(

              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 30),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Age",style: TextStyle(fontWeight: FontWeight.w700),),
                          Text("7 year 2 Month",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(width: 2,height: double.infinity,)),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                       // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight",style: TextStyle(fontWeight: FontWeight.w700),),
                          Text("190 kg 70 Gram",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
