import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60,left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Home",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              Text("Annie Braynt",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            ],
          ),
          Container(
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      transform: Matrix4.rotationZ(100),
                      child: Icon(Icons.notifications_none_outlined,size: 35,color: Colors.grey,),
                    )
                  ],
                ),
                Positioned(
                  height: 10,
                  width: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ClipOval(

                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&usqp=CAU",height: 50,width: 50,)),
          ),
        ],
      ),
    );
  }
}
